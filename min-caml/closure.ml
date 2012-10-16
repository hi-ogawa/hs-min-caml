type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* ���������Ѵ���μ� (caml2html: closure_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | SLL of Id.t * Id.t
  | SRA of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of (Id.t * Type.t) * closure * t	(*knormal�����ɲ�*)
  | AppCls of Id.t * Id.t list			(*knormal�����ɲ�*)
  | AppDir of Id.l * Id.t list			(*knormal�����ɲ�*)
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtArray of Id.l
type fundef = { name : Id.l * Type.t;
		args : (Id.t * Type.t) list;
		formal_fv : (Id.t * Type.t) list;
		body : t }
type prog = Prog of fundef list * t

let rec fv = function
  | Unit | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x) | FNeg(x) -> S.singleton x
  | Add(x, y) | Sub(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | SLL(x, y) | SRA(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2)| IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys) -> S.of_list (x :: ys)	(* closure�δؿ�Ŭ�Ѥ��ͤȤ��ƴؿ����֤����Ȥˤʤ�Τ�(curry��Ū��)?? *)
  | AppDir(_, xs) | Tuple(xs) -> S.of_list xs		(* ��٥�Ȥ��Ƥνи��ϥ��롼���� *)
  | LetTuple(xts, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

(* env: ���Ķ�(Id.t����Type.t�μ���)<M>, known: ��ͳ�ѿ����ʤ����̤˸ƤӽФ���ؿ�(Id.t�ν���)<S>*)
let rec g env known = function (* ���������Ѵ��롼�������� (caml2html: closure_g) *)
  | KNormal.Unit -> Unit
  | KNormal.Int(i) -> Int(i)
  | KNormal.Float(d) -> Float(d)
  | KNormal.Neg(x) -> Neg(x)
  | KNormal.Add(x, y) -> Add(x, y)
  | KNormal.Sub(x, y) -> Sub(x, y)
  | KNormal.SLL(x, y) -> SLL(x, y)
  | KNormal.SRA(x, y) -> SRA(x, y)
  | KNormal.FNeg(x) -> FNeg(x)
  | KNormal.FAdd(x, y) -> FAdd(x, y)
  | KNormal.FSub(x, y) -> FSub(x, y)
  | KNormal.FMul(x, y) -> FMul(x, y)
  | KNormal.FDiv(x, y) -> FDiv(x, y)
  | KNormal.IfEq(x, y, e1, e2) -> IfEq(x, y, g env known e1, g env known e2)
  | KNormal.IfLE(x, y, e1, e2) -> IfLE(x, y, g env known e1, g env known e2)
  | KNormal.Let((x, t), e1, e2) -> Let((x, t), g env known e1, g (M.add x t env) known e2)
  | KNormal.Var(x) -> Var(x)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2) -> (* �ؿ�����ξ�� (caml2html: closure_letrec) *)
      (* �ؿ����let rec x y1 ... yn = e1 in e2�ξ��ϡ�
	 x�˼�ͳ�ѿ����ʤ�(closure��𤵤�direct�˸ƤӽФ���)
	 �Ȳ��ꤷ��known���ɲä���e1�򥯥������Ѵ����Ƥߤ� *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* �����˼�ͳ�ѿ����ʤ��ä������Ѵ����e1'���ǧ���� *)
      (* ���: e1'��x���Ȥ��ѿ��Ȥ��ƽи��������closure��ɬ��!	
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml����) *)
      (*�Ƶ��ؿ��Ȥ椦���Ȥ�? 
	-> ���䤽���ǤϤʤ��ƴؿ��Ȥ���Ŭ�Ѥ��줿x�νи��ʤ��AppDir���(known'��x�����äƤ�Ȳ��ꤷ�Ƥ���Τ�)x��FV�ˤʤ�ʤ�
           Ŭ�Ѥ��줺��,Var�Ȥ��ƽи�������FV�ˤʤ� *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
	(* e1'�˼�ͳ�ѿ���¸�ߤ��ʤ��ä��Ȥ� *)
	if S.is_empty zs then known', e1' else
	(* ���ܤ��ä������(toplevel����)���ᤷ�ơ����������Ѵ�����ľ�� *)
	(Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
	 Format.eprintf "function %s cannot be directly applied in fact@." x;
	 toplevel := toplevel_backup;			 (* e1�Υ��������Ѵ���toplevel���Ѥ�ꤦ��Τ�backup���ᤷ�Ƥ��� *) 
	 let e1' = g (M.add_list yts env') known e1 in	 (* x��[known']���������[known]�Ǥ⤦���٥������㡼�Ѵ��򤹤� *)
	 known, e1') in
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* ��ͳ�ѿ��Υꥹ��(fv ���� x��yst������Ƥ���) (���ä���ä�zs�Ȥΰ㤤�����!)*)
      let zts = List.map (fun z -> (z, M.find z env')) zs in (* �����Ǽ�ͳ�ѿ�z�η����������˰���env��ɬ�� *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* �ȥåץ�٥�ؿ����ɲ� *)
      let e2' = g env' known' e2 in
      (* x��(��٥�ǤϤʤ�)�ѿ��Ȥ���e2'�˽и����뤫 (�ؿ����ͤȤ����֤������⤷���ϡ������˰���������Ŭ�Ѥ��뤫���Τɤä���)*)
      if S.mem x (fv e2')
      then (* �ؿ��Ȥ��Ƥ��� *)
	MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2')
      else (* ������Ŭ�Ѥ���Ƥ���Ȥ� *)
	(Format.eprintf "eliminating closure(s) %s@." x;
	 e2')
  | KNormal.App(x, ys) when S.mem x known -> (* �ؿ�Ŭ�Ѥξ�� (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." x;
      AppDir(Id.L(x), ys)
  | KNormal.App(f, xs) -> AppCls(f, xs)		(*/test/adder.ml: curry�����ơ������«�������ѿ�(Tf2)��known�����äƤʤ��Τǡ�AppCls�ˤʤ롣*)
  | KNormal.Tuple(xs) -> Tuple(xs)
  | KNormal.LetTuple(xts, y, e) -> LetTuple(xts, y, g (M.add_list xts env) known e)
  | KNormal.Get(x, y) -> Get(x, y)
  | KNormal.Put(x, y, z) -> Put(x, y, z)
  | KNormal.ExtArray(x) -> ExtArray(Id.L(x))
  | KNormal.ExtFunApp(x, ys) -> AppDir(Id.L("min_caml_" ^ x), ys)

(* KNormal.t -> Prog of (fundef list * t) *)
let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in
  Prog(List.rev !toplevel, e')
