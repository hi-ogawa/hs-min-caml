(* translation into SPARC assembly with infinite number of virtual registers *)

open AsmMy

(* data : (Id.l * float) list �� ref*)
(* let data = ref [] (\* ��ư��������������ơ��֥� (caml2html: virtual_data) *\) *)

let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
      match t with
      | Type.Unit -> acc
      | Type.Float -> addf acc x
      | _ -> addi acc x t)
    ini
    xts

(* int��float���ѿ��򷿤ˤ�ä�ʬ����*)
let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))

let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->	(* align�פ�ʤ� *)
      (* let offset = align offset in	(\* float��8bit�������֤� *\) *)
      (offset + 4, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + 4, addi x t offset acc))

(* Closure.t -> Asm.t*)
let rec g env = function (* ���β��ۥޥ��󥳡������� (caml2html: virtual_g) *)
  | Closure.Unit -> Ans(Nop)
  | Closure.Int(i) -> Ans(Set(i))
  | Closure.Float(d) ->	Ans(Setf(d))	(* float��¨������ *)
      (* let l = *)
      (* 	try *)
      (* 	  (\* ���Ǥ�����ơ��֥�ˤ��ä�������� *\) *)
      (* 	  let (l, _) = List.find (fun (_, d') -> d = d') !data in *)
      (* 	  l *)
      (* 	with Not_found -> *)
      (* 	  let l = Id.L(Id.genid "l") in *)
      (* 	  data := (l, d) :: !data; *)
      (* 	  l in *)
      (* let x = Id.genid "l" in *)
      (* (\* float�ϥơ��֥�(�����)�ˤ���Τǡ����Υ��ɥ쥹��x����¸�������θ�����ɤ����֤��ͤȤʤ�*\) *)
      (* Let((x, Type.Int), SetL(l), Ans(LdDF(x, C(0)))) *)
  | Closure.Neg(x) -> Ans(Neg(x))
  | Closure.Add(x, y) -> Ans(Add(x, V(y)))
  | Closure.Sub(x, y) -> Ans(Sub(x, V(y)))
  | Closure.SLL(x, y) -> Ans(SLL(x, V(y)))
  | Closure.SRA(x, y) -> Ans(SRA(x, V(y)))
  | Closure.FNeg(x) -> Ans(FNeg(x))
  | Closure.FAdd(x, y) -> Ans(FAdd(x, y))
  | Closure.FSub(x, y) -> Ans(FSub(x, y))
  | Closure.FMul(x, y) -> Ans(FMul(x, y))
  | Closure.FDiv(x, y) -> Ans(FDiv(x, y))
  | Closure.IfEq(x, y, e1, e2) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfEq(x, V(y), g env e1, g env e2))
      | Type.Float -> Ans(IfFEq(x, y, g env e1, g env e2))
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfLE(x, y, e1, e2) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfLE(x, V(y), g env e1, g env e2))
      | Type.Float -> Ans(IfFLE(x, y, g env e1, g env e2))
      | _ -> failwith "inequality supported only for bool, int, and float")
  | Closure.Let((x, t1), e1, e2) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      concat e1' (x, t1) e2'	(* let������Ҥ�ʤ��� *)
  | Closure.Var(x) ->
      (match M.find x env with
      | Type.Unit -> Ans(Nop)
      | Type.Float -> Ans(FMov(x))
      | _ -> Ans(Mov(x)))
  | Closure.MakeCls((x, t), { Closure.entry = l; Closure.actual_fv = ys }, e2) -> (* ��������������� (caml2html: virtual_makecls) *)
      (* Closure�Υ��ɥ쥹�򥻥åȤ��Ƥ��顢��ͳ�ѿ����ͤ򥹥ȥ� *)
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
	expand
	  (List.map (fun y -> (y, M.find y env)) ys)
	  (4, e2')	(*e2'�κǸ��Mov̿�ᤢ�ꤽ��(�������������Ƭ���ɥ쥹���֤��Ȥ�)*)
	  (fun y offset store_fv -> seq(StF(y, x, C(offset)), store_fv))
	  (fun y _ offset store_fv -> seq(St(y, x, C(offset)), store_fv)) in
      (* �ҡ��פ򹭤��� *)
      Let((x, t), Mov(reg_hp),
	  (* Let((reg_hp, Type.Int), Add(reg_hp, C(align offset)), *) 
	  Let((reg_hp, Type.Int), Add(reg_hp, C(offset)),   (* align��̵��Ǥ���*)
	      let z = Id.genid "l" in
	      Let((z, Type.Int), SetL(l),
		  seq(St(z, x, C(0)),		(* �ҡ��פ�0���ܤ�label���黲�Ȥ���ؿ��Υ��ɥ쥹����¸ *)
		      store_fv)))) (* e2'��¹�*)
  | Closure.AppCls(x, ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallCls(x, int, float))
  | Closure.AppDir(Id.L(x), ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallDir(Id.L(x), int, float))
  | Closure.Tuple(xs) -> (* �Ȥ����� (caml2html: virtual_tuple) *)
      let y = Id.genid "t" in
      let (offset, store) =
	expand
	  (List.map (fun x -> (x, M.find x env)) xs)
	  (0, Ans(Mov(y)))	(* �ǽ�Ū�ˤ�y�ΰ��֤��֤� *)
	  (fun x offset store -> seq(StF(x, y, C(offset)), store))
	  (fun x _ offset store -> seq(St(x, y, C(offset)), store)) in
      (* y�˥ҡ��פΰ��֤������(Move reg_hp -> y)��reg_hp�򥿥ץ��ʬ����(����ץ饹alignment)ư������������˥��ץ�����Ǥ򥹥ȥ�����̿����(store)���֤��Ƥ��� *)
      Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Mov(reg_hp),
	  (* Let((reg_hp, Type.Int), Add(reg_hp, C(align offset)), *)
	  Let((reg_hp, Type.Int), Add(reg_hp, C(offset)),	(*align��̵��Ǥ���*)
	      store))
  | Closure.LetTuple(xts, y, e2) ->
      let s = Closure.fv e2 in
      (* xi��y(tuple����Ƭ���ɥ쥹)���饪�ե��åȷ׻��������֤��ͤ�����ɤ���
	 �Ǹ��e2���֤äƤ����ͤ��֤�*)
      let (offset, load) =
	expand
	  xts
	  (0, g (M.add_list xts env) e2)
	  (fun x offset load ->
	    if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
	    fletd(x, LdF(y, C(offset)), load))	(* ����������Ū�ʲ��� *)
	  (fun x t offset load ->
	    if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
	    Let((x, t), Ld(y, C(offset)), load)) in
      load
  | Closure.Get(x, y) -> (* ������ɤ߽Ф� (caml2html: virtual_get) *)
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) ->
	  Let((offset, Type.Int), SLL(y, C(2)),
	      Ans(LdF(x, V(offset))))
      | Type.Array(_) ->
	  Let((offset, Type.Int), SLL(y, C(2)),
	      Ans(Ld(x, V(offset))))
      | _ -> assert false)
  | Closure.Put(x, y, z) ->
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) ->
	  Let((offset, Type.Int), SLL(y, C(2)),
	      Ans(StF(z, x, V(offset))))
      | Type.Array(_) ->
	  Let((offset, Type.Int), SLL(y, C(2)),
	      Ans(St(z, x, V(offset))))
      | _ -> assert false)
  | Closure.ExtArray(Id.L(x)) -> Ans(SetL(Id.L("min_caml_" ^ x)))(*label�Υ��å�*)

(* �ؿ��β��ۥޥ��󥳡������� (caml2html: virtual_h) *)
(* Closure.fundef -> Asm.fundef *)
let h { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
  let (int, float) = separate yts in
  let (offset, load) =(*closure��addr����offset�׻����ʤ���z1,z2..��load����e��׻� *)
    expand
      zts
      (4, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load -> fletd(z, LdF(reg_cl, C(offset)), load))
      (fun z t offset load -> Let((z, t), Ld(reg_cl, C(offset)), load)) in
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

(* �ץ���������Τβ��ۥޥ��󥳡������� (caml2html: virtual_f) *)
(* Closure.prog (fundefs', e') -> Asm.prog (float_data, fundefs, e) *)
let f (Closure.Prog(fundefs, e)) =
  (* data := []; *)
  let fundefs = List.map h fundefs in
  let e = g M.empty e in
  (* Prog(!data, fundefs, e) *)
  Prog(fundefs, e)


(*
Closure.Tuple(xs) ==>> Asm.t�� 
  Tuple (x1, x2, x3, ..)
=> y <- newid (���ץ���ͤ�����������Ƭ���ɥ쥹)
   xts <- map �Ȥ����Ȥ� xs
   expand [(x1, t2); (x2, t2); (x3, t3); ..]  (0, Ans(Move(y))) f_float f2_other
=> foldl��鲿����
   (0, Ans(Move(y)))
=> (0+4, seq(St(x1, y, 0), Ans(Move(y))))
=> (8+8, seq(StDF(x2, y, 8), seq')	   (* x2��float�ʤ��8bit����������!!(4���ä��Τ�8�ˤʤ�) *)
=> ...
=> (off, seq(St....., Ans(Move(y))))


Closure.MakeCls ==>> Asm.t��
  MakeCls((x,t), {entry = l; actual_fv = ys}, e2)
=> foldl�Ȥ���ys���꤯���ȥ�
  (4, e2')
=> (4+4, seq(StDF(y1, x, 4), e2')
=> (4+4+8, seq(StDF(y2, x, 4+4), seq(StDF(y1, x, 4), e2')))
=> ..
=> (o, seqs)
=> Let( -�ҡ��׹�����-(���Υҡ��פ�x��), Let( x����Ƭ�ˤ�l(entry)�򥹥ȥ�, Let(����ʹߤˤ�fv�򥹥ȥ����ơ�e2'��¹ԡ�)))
*)