(* 共通部分式除去 *)
(* assoc(AlphaNormal)の後が良い?? *)
(*
副作用のある外部関数(アセンブリで書いたライブラリ)は初期集合にいれとく
*)

open KNormal

module Mexp =
  Map.Make
    (struct
      type t = KNormal.t
      let compare = Pervasives.compare
     end)

(* effect :: KNormal.t -> Bool *)
let rec effect set = function (* 副作用の条件とは?? *)
  | Let(_,e1,e2)| IfEq(_,_,e1,e2)| IfLE(_,_,e1,e2) -> effect set e1 || effect set e2
  | LetRec(_,e) | LetTuple(_,_,e) -> effect set e
  | App (f, xs)	when S.mem f set	(* fは関数名(再帰関数だったらfalse) *)
      -> ((*Format.eprintf "side effect fun(elimEqExp) %s@." f;*)
	  true)
  | ExtFunApp (f, xs) when S.mem f set	(* fは関数名 *)
      -> ((*Format.eprintf "side effect fun(elimEqExp) %s@." f;*)
	  true)
  | Put _ | Get _ -> true
  | Var x when S.mem x set
      -> ((*Format.eprintf "side effect var(elimEqExp) %s@." x;*)
	  true)
  | _ -> false

(* env :: map(KNormal.t * Id.t), set :: set(Id.t) side effect function *)
let rec g env set = function
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env set e1, g env set e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env set e1, g env set e2)
  | Let((x, t), e1, e2) ->
    let e1' = g env set e1 in
    if effect set e1' 	(*副作用の有無*)
    then ((*Format.eprintf "side effect var(elimEqExp) %s@." x;*)
	  Let((x, t), e1', g env (S.add x set) e2))
    else 
      if Mexp.mem e1' env
      then (* mapにあったら変換。登録しない?*)
	((match e1' with
	  | App(fname,_) -> Format.eprintf "elimEqExp(FUN) %s@." fname
	  | _  -> ());
	 let y = Mexp.find e1' env in
	 Format.eprintf "elimEqExp %s = %s@." x y;
	 Let((x, t), Var(y), g env (S.add x set) e2))
      else Let((x, t), e1', g (Mexp.add e1' x env) (S.add x set) e2)(* 登録する *)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) ->
    if effect set e1	(* 再帰呼び出しだったらどうする?? *)
    then
      ((*Format.eprintf "side effect fun(elimEqExp) %s@." x;*)
       LetRec({ name = (x, t); args = yts; body = g (Mexp.empty) set e1 }, g env (S.add x set) e2))
    else
      LetRec({ name = (x, t); args = yts; body = g (Mexp.empty) set e1 }, g env set e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env set e)
  | e -> e

let f = g Mexp.empty (S.of_list ["create_array"; "create_float_array"; "print_char"; "input_char"])
