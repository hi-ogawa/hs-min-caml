(* type inference/reconstruction *)

open Syntax

exception Unify of Type.t * Type.t
exception Error of Lexing.position * Type.t * Type.t

let extenv = ref M.empty

let get_pos = function 
  | Unit' | Bool' _  | Int' _ | Float' _ | Var' _
    -> Lexing.dummy_pos
  | Not' (_, pos) | Neg' (_, pos) | FNeg'(_,pos) | Sqrt'(_,pos)
  | Add' (_,_,pos) | Sub' (_,_,pos) | FAdd' (_,_,pos) | FSub' (_,_,pos) | FMul' (_,_,pos)
  | FDiv' (_,_,pos) | Eq' (_,_,pos) | LE' (_,_,pos)
  | If' (_,_,_,pos) | Let' (_,_,_,pos) | LetRec' (_,_,pos)
  | App' (_,_,pos) | Tuple' (_,pos) | LetTuple' (_,_,_,pos) | Array' (_,_,pos)
  | Get' (_,_,pos) | Put' (_,_,_,pos)
  | SLL' (_,_,pos) | SRA' (_,_,pos)
  (* | Input'(pos) | Output'(_,pos) *)
    -> pos
  

(* for pretty printing (and type normalization) *)
let rec deref_typ = function (* 型変数を中身でおきかえる関数 (caml2html: typing_deref) *)
  | Type.Fun(t1s, t2) -> Type.Fun(List.map deref_typ t1s, deref_typ t2)
  | Type.Tuple(ts) -> Type.Tuple(List.map deref_typ ts)
  | Type.Array(t) -> Type.Array(deref_typ t)
  | Type.Var({ contents = None } as r) ->	(* 外部変数は型推論されなかった時、Intとする *)
      Format.eprintf "uninstantiated type variable detected; assuming int@.";
      r := Some(Type.Int);
      Type.Int
  | Type.Var({ contents = Some(t) } as r) ->
      let t' = deref_typ t in
      r := Some(t');
      t'
  | t -> t
let rec deref_id_typ (x, t) = (x, deref_typ t)

(* let, letrec中の変数の型を変換してるだけ : Syntax.t' -> Syntax.t*)
let rec deref_term = function
  | Not'(e,_) -> Not(deref_term e)
  | Neg'(e,_) -> Neg(deref_term e)
  | Add'(e1, e2, _) -> Add(deref_term e1, deref_term e2)
  | Sub'(e1, e2, _) -> Sub(deref_term e1, deref_term e2)
  | SLL' (e1, e2, _) -> SLL(deref_term e1, deref_term e2)
  | SRA' (e1, e2, _) -> SRA(deref_term e1, deref_term e2)
  | Eq'(e1, e2, _) -> Eq(deref_term e1, deref_term e2)
  | LE'(e1, e2, _) -> LE(deref_term e1, deref_term e2)
  | Sqrt'(e, _) -> Sqrt(deref_term e)
  | FNeg'(e, _) -> FNeg(deref_term e)
  | FAdd'(e1, e2, _) -> FAdd(deref_term e1, deref_term e2)
  | FSub'(e1, e2, _) -> FSub(deref_term e1, deref_term e2)
  | FMul'(e1, e2, _) -> FMul(deref_term e1, deref_term e2)
  | FDiv'(e1, e2, _) -> FDiv(deref_term e1, deref_term e2)
  | If'(e1, e2, e3, _) -> If(deref_term e1, deref_term e2, deref_term e3)
  | Let'(xt, e1, e2, _) -> Let(deref_id_typ xt, deref_term e1, deref_term e2)
  | LetRec'({ name' = xt; args' = yts; body' = e1 }, e2, _) ->
      LetRec({ name = deref_id_typ xt;
	       args = List.map deref_id_typ yts;
	       body = deref_term e1 },
	     deref_term e2)
  | App'(e, es, _) -> App(deref_term e, List.map deref_term es)
  | Tuple'(es, _) -> Tuple(List.map deref_term es)
  | LetTuple'(xts, e1, e2, _) -> LetTuple(List.map deref_id_typ xts, deref_term e1, deref_term e2)
  | Array'(e1, e2, _) -> Array(deref_term e1, deref_term e2)
  | Get'(e1, e2, _) -> Get(deref_term e1, deref_term e2)
  | Put'(e1, e2, e3, _) -> Put(deref_term e1, deref_term e2, deref_term e3)
  | Unit' -> Unit
  | Bool' b -> Bool b
  | Int' i -> Int i
  | Float' f -> Float f
  | Var' x -> Var x

let rec occur r1 = function (* occur check (caml2html: typing_occur) *)
  | Type.Fun(t2s, t2) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s) -> List.exists (occur r1) t2s
  | Type.Array(t2) -> occur r1 t2
  | Type.Var(r2) when r1 == r2 -> true
  | Type.Var({ contents = None }) -> false
  | Type.Var({ contents = Some(t2) }) -> occur r1 t2
  | _ -> false

let rec unify t1 t2 = (* 型が合うように、型変数への代入をする (caml2html: typing_unify) *)
  match t1, t2 with
  | Type.Unit, Type.Unit | Type.Bool, Type.Bool | Type.Int, Type.Int | Type.Float, Type.Float -> ()
  | Type.Fun(t1s, t1'), Type.Fun(t2s, t2') ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument("List.iter2") -> raise (Unify(t1, t2)));
      unify t1' t2'
  | Type.Tuple(t1s), Type.Tuple(t2s) ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument("List.iter2") -> raise (Unify(t1, t2)))
  | Type.Array(t1), Type.Array(t2) -> unify t1 t2
  | Type.Var(r1), Type.Var(r2) when r1 == r2 -> ()
  | Type.Var({ contents = Some(t1') }), _ -> unify t1' t2
  | _, Type.Var({ contents = Some(t2') }) -> unify t1 t2'
  | Type.Var({ contents = None } as r1), _ -> (* 一方が未定義の型変数の場合 (caml2html: typing_undef) *)
      if occur r1 t2 then raise (Unify(t1, t2));
      r1 := Some(t2)
  | _, Type.Var({ contents = None } as r2) ->
      if occur r2 t1 then raise (Unify(t1, t2));
      r2 := Some(t1)
  | _, _ -> raise (Unify(t1, t2))

(* g : (env) -> Syntax.t' -> Type.t *)
let rec g env e = (* 型推論ルーチン (caml2html: typing_g) *)
  try
    match e with
    | Unit' -> Type.Unit
    | Bool'(_) -> Type.Bool
    | Int'(_) -> Type.Int
    | Float'(_) -> Type.Float
    | Not'(e,_) ->
	unify Type.Bool (g env e);
	Type.Bool
    | Neg'(e,_) ->
	unify Type.Int (g env e);
	Type.Int
    | Sqrt'(e,_) ->
    	unify Type.Float (g env e);
    	Type.Float
    | Add'(e1, e2, _) | Sub'(e1, e2, _) | SLL'(e1, e2, _) | SRA'(e1, e2, _)-> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
	unify Type.Int (g env e1);
	unify Type.Int (g env e2);
	Type.Int
    | FNeg'(e, _) ->
	unify Type.Float (g env e);
	Type.Float
    | FAdd'(e1, e2, _) | FSub'(e1, e2, _) | FMul'(e1, e2, _) | FDiv'(e1, e2, _) ->
	unify Type.Float (g env e1);
	unify Type.Float (g env e2);
	Type.Float
    | Eq'(e1, e2, _) | LE'(e1, e2, _) ->
	unify (g env e1) (g env e2);	(* 実はFloat,Int,Bool意外だったとしても、ここでは型エラーとしてはじかない *)
	Type.Bool
    | If'(e1, e2, e3, _) ->
	unify (g env e1) Type.Bool;
	let t2 = g env e2 in
	let t3 = g env e3 in
	unify t2 t3;
	t2
    | Let'((x, t), e1, e2, _) -> (* letの型推論 (caml2html: typing_let) *)
	unify t (g env e1);
	g (M.add x t env) e2
    | Var'(x) when M.mem x env -> M.find x env (* 変数の型推論 (caml2html: typing_var) *)
    | Var'(x) when M.mem x !extenv -> M.find x !extenv
    | Var'(x) -> (* 外部変数の型推論 (caml2html: typing_extvar) *)
	Format.eprintf "free variable %s assumed as external@." x;
	let t = Type.gentyp () in
	extenv := M.add x t !extenv;
	t
    | LetRec'({ name' = (x, t); args' = yts; body' = e1 }, e2, _) -> (* let recの型推論 (caml2html: typing_letrec) *)
	let env = M.add x t env in
	unify t (Type.Fun(List.map snd yts, g (M.add_list yts env) e1));
	g env e2
    | App'(e, es, _) -> (* 関数適用の型推論 (caml2html: typing_app) *)
        let t = Type.gentyp () in
	unify (g env e) (Type.Fun(List.map (g env) es, t));
	t
    | Tuple'(es, _) -> Type.Tuple(List.map (g env) es)
    | LetTuple'(xts, e1, e2, _) ->
	unify (Type.Tuple(List.map snd xts)) (g env e1);
	g (M.add_list xts env) e2
    | Array'(e1, e2, _) -> (* must be a primitive for "polymorphic" typing *)
	unify (g env e1) Type.Int;
	Type.Array(g env e2)
    | Get'(e1, e2, _) ->
	let t = Type.gentyp () in
	unify (Type.Array(t)) (g env e1);
	unify Type.Int (g env e2);
	t
    | Put'(e1, e2, e3, _) ->
	let t = g env e3 in
	unify (Type.Array(t)) (g env e1);
	unify Type.Int (g env e2);
	Type.Unit
  with Unify(t1, t2) -> raise (Error(get_pos e, deref_typ t1, deref_typ t2))

let f e =
  (* print_char,input_charとアセンブリで書いたライブラリは外部関数なので型を明示する(arrayは別) *)
  extenv := M.add_list [("print_char", (Type.Fun ([Type.Int], Type.Unit)))
		       ;("input_char",(Type.Fun([Type.Unit], Type.Int)))
		       ;("floor", (Type.Fun([Type.Float], Type.Float)))
		       ;("float_of_int", (Type.Fun([Type.Int], Type.Float)))
		       ;("int_of_float", (Type.Fun([Type.Float], Type.Int)))
		       ;("truncate", (Type.Fun([Type.Float], Type.Int)))
		       ;("sqrt", (Type.Fun ([Type.Float], Type.Float)))
		       ;("freg_to_ireg", (Type.Fun([Type.Float], Type.Int)))
		       ] M.empty;
  ignore (g M.empty e);
  extenv := M.map deref_typ !extenv;
  deref_term e
