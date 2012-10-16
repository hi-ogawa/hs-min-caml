open AsmMy

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (* (let pad = *)	(* 単精度で4byteだからpaddingいらない *)
    (*   if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in *)
    (* stackmap := !stackmap @ pad @ [x; x]) *)
    stackmap := !stackmap @ [x]
let locate x =	(* 単精度ならこんなめんどいことしないでいい *)
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = ((List.length !stackmap + 1) * 4) (* align ((List.length !stackmap + 1) * 4) *)
(* return address 格納のため[+1]してある*)

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
					 (function
					   | (y', z) when y = y' -> (sw, z)
					   | yz -> yz)
					 xys)
  | xys, acyc -> acyc @ shuffle sw xys

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g oc = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) when -32768 <= i && i <= 32767 -> Printf.fprintf oc "\tori\t%s, $r0, %d\n" x i	(* 16bitの即値fieldで収まる時(ori) *)
  | NonTail(x), Set(i) 
    -> Printf.fprintf oc "\tlui\t%s, %d\n" x ((i lsr 16) mod (1 lsl 16));	(* 32bit整数のレジスタへのロード *)
       Printf.fprintf oc "\tori\t%s, %s, %d\n" x x (i mod (1 lsl 16))
  | NonTail(x), Setf(d) 
    -> Printf.fprintf oc "\tlfh\t%s, %ld\n" x (gethi d);
       Printf.fprintf oc "\tlfl\t%s, %ld\n" x (getlo d)
  | NonTail(x), SetL(Id.L(y)) -> Printf.fprintf oc "\tla\t%s, %s\n" x y		(* load address擬似命令 *)
  | NonTail(x), Mov(y) when x = y -> ()
  | NonTail(x), Mov(y) -> Printf.fprintf oc "\taddi\t%s, %s, 0\n" x y
  | NonTail(x), Neg(y) -> Printf.fprintf oc "\tsubu\t%s, %s, %s\n" x "$r0"  y
  | NonTail(x), Add(y, V(z)) -> Printf.fprintf oc "\taddu\t%s, %s, %s\n" x y z
  | NonTail(x), Add(y, C(i)) -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" x y i
  | NonTail(x), Sub(y, V(z)) -> Printf.fprintf oc "\tsubu\t%s, %s, %s\n" x y z
  | NonTail(x), Sub(y, C(i)) -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" x y (-i)
  | NonTail(x), SLL(y, V(z)) -> assert false
  | NonTail(x), SLL(y, C(i)) -> Printf.fprintf oc "\tsll\t%s, %s, %d\n" x y i
  | NonTail(x), SRA(y, V(z)) -> assert false
  | NonTail(x), SRA(y, C(i)) -> Printf.fprintf oc "\tsra\t%s, %s, %d\n" x y i
  | NonTail(x), Ld(y, V(z)) -> Printf.fprintf oc "\taddu\t$r1, %s, %s\n" y z; Printf.fprintf oc "\tlw\t%s, 0($r1)\n" x
  | NonTail(x), Ld(y, C(i)) -> Printf.fprintf oc "\tlw\t%s, %d(%s)\n" x i y
  | NonTail(_), St(x, y, V(z)) -> Printf.fprintf oc "\taddu\t$r1, %s, %s\n"  y z; Printf.fprintf oc "\tsw\t%s, 0($r1)\n" x
  | NonTail(_), St(x, y, C(i)) -> Printf.fprintf oc "\tsw\t%s, %d(%s)\n" x i y
  | NonTail(x), FMov(y) when x = y -> ()
  | NonTail(x), FMov(y) ->
      Printf.fprintf oc "\tfmove\t%s, %s\n" y x;	(* 移動命令欲しい *)
      (* Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg y) (co_freg x)	(\* 64bitを移動 *\) *)
  | NonTail(x), FNeg(y) ->
      Printf.fprintf oc "\tfnegs\t%s, %s\n" y x; (* 符号反転も欲しい *)
      (* if x <> y then Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg y) (co_freg x) *)
  | NonTail(x), FAdd(y, z) -> Printf.fprintf oc "\tadd.s\t%s, %s, %s\n" x y z
  | NonTail(x), FSub(y, z) -> Printf.fprintf oc "\tsub.s\t%s, %s, %s\n" x y z
  | NonTail(x), FMul(y, z) -> Printf.fprintf oc "\tmul.s\t%s, %s, %s\n" x y z
  | NonTail(x), FDiv(y, z) -> Printf.fprintf oc "\tdiv.s\t%s, %s, %s\n" x y z
  | NonTail(x), LdF(y, C(i)) -> Printf.fprintf oc "\tlwcl\t%s, %d(%s)\n" x i y
  | NonTail(x), LdF(y, V(z)) -> Printf.fprintf oc "\taddu\t$r1, %s, %s\n" y z; Printf.fprintf oc "\tlwcl\t%s, 0($r1)\n" x
  | NonTail(_), StF(x, y, C(i)) -> Printf.fprintf oc "\tswcl\t%s, %d(%s)\n" x i y
  | NonTail(_), StF(x, y, V(z)) -> Printf.fprintf oc "\taddu\t$r1, %s, %s\n"  y z; Printf.fprintf oc "\tswcl\t%s, 0($r1)\n" x
  | NonTail(_), Comment(s) -> Printf.fprintf oc "\t! %s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" x (-(offset y)-4) reg_sp
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tswcl\t%s, %d(%s)\n" x (-(offset y)-4) reg_sp
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()	(* もう既にスタックにあったらスルー *)
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" x (-(offset y)-4) reg_sp
  | NonTail(x), Restore(y) ->	
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tlwcl\t%s, %d(%s)\n" x (-(offset y)-4) reg_sp
  (* 末尾だったら計算結果を第一レジスタにセットしてret (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StF _ | Comment _ | Save _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);	(*返り値なし*)
      Printf.fprintf oc "\tjr\t$r31\n"
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _ | SLL _ | SRA _ | Ld _ as exp) ->
      g' oc (NonTail(regs.(0)), exp);	(*返り値Int*)
      Printf.fprintf oc "\tjr\t$r31\n"
  | Tail, (Setf _ | FMov _ | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _ | LdF _  as exp) ->
      g' oc (NonTail(fregs.(0)), exp);	(*返り値Float*)
      Printf.fprintf oc "\tjr\t$r31\n"
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      (* | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)	(\* 8byte(倍精度)をstackにsaveするときこんな感じにするみたい *\) *)
      | _ -> assert false);
      Printf.fprintf oc "\tjr\t$r31\n"
  | Tail, IfEq(x, y, e1, e2) ->
      g'_tail_if oc e1 e2 "beq" "bne" x y
  | Tail, IfLE(x, y, e1, e2) ->
      g'_tail_if oc e1 e2 "ble" "bgt" x y
  | Tail, IfGE(x, y, e1, e2) ->
      g'_tail_if oc e1 e2 "bge" "blt" x y 
  | Tail, IfFEq(x, y, e1, e2) ->
      Printf.fprintf oc "\tc.eq.s\t%s, %s\n" x y;
      g'_tail_ifF oc e1 e2 "bclt" "bclf"
  | Tail, IfFLE(x, y, e1, e2) ->
      Printf.fprintf oc "\tc.le.s\t%s, %s\n" x y;
      g'_tail_ifF oc e1 e2 "bclt" "bclf"
  | NonTail(z), IfEq(x, y, e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "beq" "bne" x y
  | NonTail(z), IfLE(x, y, e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "ble" "bgt" x y
  | NonTail(z), IfGE(x, y, e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bge" "blt" x y
  | NonTail(z), IfFEq(x, y, e1, e2) ->
      Printf.fprintf oc "\tc.eq.s\t%s, %s\n" x y;
      g'_non_tail_ifF oc (NonTail(z)) e1 e2 "bclt" "bclf"
  | NonTail(z), IfFLE(x, y, e1, e2) ->
      Printf.fprintf oc "\tc.le.s\t%s, %s\n" x y;
      g'_non_tail_ifF oc (NonTail(z)) e1 e2 "bclt" "bclf"
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *)	(* この時点で[reg x]にはheap上のclosureのアドレスが入り,fv群もそこら辺においてあるはず *)
      g'_args oc [(x, reg_cl)] ys zs;				(* heap上のlabelやらfvをレジスタに移す *)
      Printf.fprintf oc "\tlw\t%s, 0(%s)\t! callcls-tail\n" reg_sw reg_cl;	(* heap上においてあるはずの関数labelをreg_clへ *)
      Printf.fprintf oc "\tjr\t%s\t! callcls-tail\n" reg_sw;			(* 関数呼びだし 末尾なのでlink register更新しないでよい気がす*)
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
    g'_args oc [] ys zs;
    if x = "min_caml_print_char"
    then (Printf.fprintf oc "\toutput\t$r2\n";		(* print_charの呼び出し *)
	  Printf.fprintf oc "\tjr\t$r31\n")
    else 
      if x = "min_caml_input_char"
      then (Printf.fprintf oc "\tinput\t$r2\n";
	    Printf.fprintf oc "\tjr\t$r31\n")
      else
	Printf.fprintf oc "\tj\t%s\t! calldir-tail\n" x;
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      let j_label1 = Id.genid ("mendoi1") in
      let j_label2 = Id.genid ("mendoi2") in
      Printf.fprintf oc "\tsw\t%s, %d(%s)\t! callcls\n" reg_ra (-ss) reg_sp;
      Printf.fprintf oc "\tlw\t%s, 0(%s)\t! callcls\n" reg_sw reg_cl;
      Printf.fprintf oc "\taddi\t%s, %s, %d\t! callcls\n" reg_sp reg_sp (-ss);
      Printf.fprintf oc "\tjal\t%s\t! callcls\n" j_label2;
      Printf.fprintf oc "\tj\t%s\t! callcls\n" j_label1;
      Printf.fprintf oc "%s:\t! callcls\n" j_label2;
      Printf.fprintf oc "\tjr\t%s\t! callcls\n" reg_sw;			(* jalだったとこ ちょっと怪しい *)
      Printf.fprintf oc "%s:\t! callcls\n" j_label1;
      Printf.fprintf oc "\taddi\t%s, %s, %d\t! callcls\n" reg_sp reg_sp ss;
      Printf.fprintf oc "\tlw\t%s, %d(%s)\t! callcls\n" reg_ra (-ss) reg_sp;
      if List.mem a allregs && a <> regs.(0) then		(* 返り値の型がUnitのときはregAllocで、a = [%g0]になってるから *)
	Printf.fprintf oc "\taddi\t%s, %s, 0\t! callcls\n" a regs.(0)
      else if List.mem a allfregs && a <> fregs.(0) then
	Printf.fprintf oc "\tfmove\t%s, %s\n" a fregs.(0)
  | NonTail(a), CallDir(Id.L(x), ys, zs) ->
    g'_args oc [] ys zs;
    if x = "min_caml_print_char"
    then Printf.fprintf oc "\toutput\t$r2\n"		(* print_charの呼び出し *)
    else 
      if x = "min_caml_input_char"
      then (if List.mem a allregs then			(* おそらく読み飛ばししたい時もありそう?? *)
	      Printf.fprintf oc "\tinput\t%s\n" a
	    else if List.mem a allfregs then
	      assert false
	    else Printf.fprintf oc "\tinput\t$r2")
      else
	let ss = stacksize () in
	Printf.fprintf oc "\tsw\t%s, %d(%s)\t! calldir\n" reg_ra (-ss) reg_sp;
	Printf.fprintf oc "\taddi\t%s, %s, %d\t! calldir\n" reg_sp reg_sp (-ss);
	Printf.fprintf oc "\tjal\t%s\t! calldir\n" x;
	Printf.fprintf oc "\taddi\t%s, %s, %d\t! calldir\n" reg_sp reg_sp ss;
	Printf.fprintf oc "\tlw\t%s, %d(%s)\t! calldir\n" reg_ra (-ss) reg_sp;
	if List.mem a allregs && a <> regs.(0) then		(* 返り値の型がUnitのときはregAllocで、a = [%g0]になってるから *)
	  Printf.fprintf oc "\taddi\t%s, %s, 0\t! calldir\n" a regs.(0)
	else if List.mem a allfregs && a <> fregs.(0) then
	  Printf.fprintf oc "\tfmove\t%s, %s\n" a fregs.(0)
          (* Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg fregs.(0)) (co_freg a) *)
and g'_tail_if oc e1 e2 b bn x y' =
  match y' with
    | C(_) -> assert false
    | V(y) -> let b_else = Id.genid (b ^ "_else") in
	      Printf.fprintf oc "\t%s\t%s, %s, %s\n" bn x y b_else;
	      let stackset_back = !stackset in
	      g oc (Tail, e1);
	      Printf.fprintf oc "%s:\n" b_else;
	      stackset := stackset_back;
	      g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn x y' =
match y' with
  | C(_) -> assert false
  | V(y) -> let b_else = Id.genid (b ^ "_else") in
	    let b_cont = Id.genid (b ^ "_cont") in
	    Printf.fprintf oc "\t%s\t%s, %s, %s\n" bn x y b_else;
	    let stackset_back = !stackset in
	    g oc (dest, e1);
	    let stackset1 = !stackset in
	    Printf.fprintf oc "\tj\t%s\n" b_cont;
	    Printf.fprintf oc "%s:\n" b_else;
	    stackset := stackset_back;
	    g oc (dest, e2);
	    Printf.fprintf oc "%s:\n" b_cont;
	    let stackset2 = !stackset in
	    stackset := S.inter stackset1 stackset2
and g'_tail_ifF oc e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_ifF oc dest e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tj\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\taddi\t%s, %s, 0\t! g'_args\n" r y)
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) ->
      Printf.fprintf oc "\tfmove\t%s, %s\t! g'_args\n" fr z)
      (* Printf.fprintf oc "\tfmove\t%s, %s\n" (co_freg z) (co_freg fr)) *)
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc "\tj\tmin_caml_start\n";		(* mainにジャンプ *)
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc "min_caml_start:\n";
  Printf.fprintf oc "\tlui\t%s, %d\t! init reg_sp\n" reg_sp 0x0001;		(* reg_spの初期化 0x00400000 (22bitで表現できる領域を使う)*)
  Printf.fprintf oc "\tori\t%s, %s, %d\t! init reg_sp\n" reg_sp reg_sp 0x0000;	(* reg_spの初期化 0x00400000 *)
  Printf.fprintf oc "\tori\t%s, %s, %d\t! init reg_hp \n" reg_hp "$r0" 0;	(* reg_hpの初期化 0x00000000 *)
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("%g0"), e);	(* 返り値がUnitでないとmove g0が出てくるのでダメな感じ *)
  Printf.fprintf oc "\thalt\n"
