open Closure

let rec innerCheck ts = (* tupleが入れ子かどうかのチェック *)
  match ts with
    | []	-> false
    | ((Type.Tuple _)::_)	-> true
    | (_::ts)	-> innerCheck ts

(* :: Type.t -> ([Type.t], Int) *)
let innerChange ts = (* ts中の一番先頭にある入れ子のtupleを展開 *)
  let rec sub ts n = 
    match ts with
      | []	-> assert false
      | ((Type.Tuple tsIn)::_)	-> (tsIn, n)
      | (_::ts)			-> sub ts (n+1)
  in
  sub ts 0

let innerNewType ts = 

let g env = function
  | Unit | Int _ | Float _ (* | ExtArray *) -> e
  | Neg x	-> 
  | FNeg x	-> 
  | Add (x, y)  ->
    ..
  | Let (x, (Type.Tuple ts) as t) e1 e2
    -> if innerCheck ts
      then 
      else 

  | Tuple xs		-> 
  | LetTuple xts y e	-> M.add 

let f e = g M.empty e
