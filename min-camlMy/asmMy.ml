type id_or_imm = V of Id.t | C of int
type t = (* ̿����� (caml2html: sparcasm_t) *)
  | Ans of exp				(* ̿����κǸ���֤������ *)
  | Let of (Id.t * Type.t) * exp * t	(* ����Ū��̿�����Let���Ĥʤ��ä���Τȹͤ�����(Let��[Id.t]��̿��[exp]��destination) *)
and exp = (* ��İ�Ĥ�̿����б����뼰 (caml2html: sparcasm_exp) *)
  | Nop
  | Set of int			(* word immidiate ���� *)
  | Setf of float
  | SetL of Id.l		(* label(��������)���Ȥ򤹤뤿��˥��å� *)
  | Mov of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | SLL of Id.t * id_or_imm	(* shift logic left*)
  | SRA of Id.t * id_or_imm
  | Ld of Id.t * id_or_imm	(* load *)
  | St of Id.t * Id.t * id_or_imm	(* store *)
  | FMov of Id.t		
  | FNeg of Id.t
  | FAdd of Id.t * Id.t		(* float�黻��¨�ͤʤ� *)
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | LdF of Id.t * id_or_imm	(* load double float*)
  | StF of Id.t * Id.t * id_or_imm	(* store double float *)
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t (* �����оΤǤϤʤ��Τ�ɬ�� *) (* �ɤä���GE?? *)
  | IfFEq of Id.t * Id.t * t * t	(* float��Ӥξ��ʬ���äݤ�, �Ȥ�?? *)
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list	(* ������������ѿ��˳�Ǽ���줿���ɥ쥹��δؿ�(��ͳ�ѿ��⤽���դ�ˤ���)��ƤӽФ�*)
  | CallDir of Id.l * Id.t list * Id.t list	(* toplevel����ѥäȸƤ٤� *)
  | Save of Id.t * Id.t (* �쥸�����ѿ����ͤ򥹥��å��ѿ�����¸ (caml2html: sparcasm_save) *) (* Save "%i2" "n" ==>> �쥸����i2�򥹥��å��ѿ�n������ *)
  | Restore of Id.t (* �����å��ѿ������ͤ����� (caml2html: sparcasm_restore) *) (* Restore "n" ==>> �����å��ѿ�n�����ͤ����� *)

(*         [�ؿ���label̾] [int�β�����]    [float�β�����]   [�ؿ���̿����]    [�֤���] *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }

(* �ץ���������� = ��ư���������ơ��֥� + �ȥåץ�٥�ؿ� + �ᥤ��μ� (caml2html: sparcasm_prog) *)
(* type prog = Prog of (Id.l * float) list * fundef list * t *)
type prog = Prog of fundef list * t

let fletd(x, e1, e2) = Let((x, Type.Float), e1, e2)
let seq(e1, e2) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2)

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [| "$r2"; "$r3"; "$r4"; "$r5"; "$r6"; "$r7"; "$r8"; "$r9"; "$r10"; 
     "$r11"; "$r12"; "$r13"; "$r14"; "$r15"; "$r16"; "$r17"; "$r18"; "$r19"; "$r20";
     "$r21"; "$r22"; "$r23"; "$r24"; "$r25"; "$r26"; "$r27"; "$r28" |]
let fregs = Array.init 16 (fun i -> Printf.sprintf "$f%d" (i * 2)) (*������Τ�0,2,4..*)
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *)
let reg_sw = regs.(Array.length regs - 2) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
let reg_sp = "$r29" (* stack pointer *)
let reg_hp = "$r30" (* heap pointer (caml2html: sparcasm_reghp) *)
let reg_ra = "$r31" (* return address *)
let is_reg x = (x.[0] = '$')
let co_freg_table =
  let ht = Hashtbl.create 16 in
  for i = 0 to 15 do
    Hashtbl.add
      ht
      (Printf.sprintf "$f%d" (i * 2))
      (Printf.sprintf "$f%d" (i * 2 + 1))
  done;
  ht
let co_freg freg = Hashtbl.find co_freg_table freg (* "companion" freg *)

(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | Setf (_) | SetL(_) | Comment(_) | Restore(_) -> []
  | Mov(x) | Neg(x) | FMov(x) | FNeg(x) | Save(x, _) -> [x]
  | Add(x, y') | Sub(x, y') | SLL(x, y') | SRA(x, y') | Ld(x, y') | LdF(x, y') -> x :: fv_id_or_imm y'
  | St(x, y, z') | StF(x, y, z') -> x :: y :: fv_id_or_imm z'
  | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) -> [x; y]
  | IfEq(x, y', e1, e2) | IfLE(x, y', e1, e2) | IfGE(x, y', e1, e2) -> x :: fv_id_or_imm y' @ remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | IfFEq(x, y, e1, e2) | IfFLE(x, y, e1, e2) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
and fv = function
  | Ans(exp) -> fv_exp exp
  | Let((x, t), exp, e) ->
      fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
let fv e = remove_and_uniq S.empty (fv e)

(* let������Ҥ�ʤ������� *)
let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp) -> Let(xt, exp, e2)
  | Let(yt, exp, e1') -> Let(yt, exp, concat e1' xt e2)

(* let align i = (if i mod 8 = 0 then i else i + 4) *)