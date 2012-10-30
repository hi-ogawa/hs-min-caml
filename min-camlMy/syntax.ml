open Lexing

type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
  | Unit
  | Bool of bool
  | Int of int
  | Float of float
  | Not of t
  | Neg of t
  | Add of t * t
  | Sub of t * t
  | SLL of t * t	(* 第二オペランドは即値のみ *)
  | SRA of t * t	(* 同上 *)
  | FNeg of t
  | FAdd of t * t
  | FSub of t * t
  | FMul of t * t
  | FDiv of t * t
  | Eq of t * t
  | LE of t * t
  | If of t * t * t
  | Let of (Id.t * Type.t) * t * t	(* let *)
  | Var of Id.t
  | LetRec of fundef * t
  | App of t * t list		(* この時点では t == Var Id.t かな*)
  | Tuple of t list
  | LetTuple of (Id.t * Type.t) list * t * t
  | Array of t * t
  | Get of t * t
  | Put of t * t * t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }


type t' = (* positionを記憶 *)
  | Unit'
  | Bool' of bool
  | Int' of int
  | Float' of float
  | Not' of t' * position
  | Neg' of t' * position
  | Add' of t' * t' * position
  | Sub' of t' * t' * position
  | SLL' of t' * t' * position
  | SRA' of t' * t' * position
  | FNeg' of t' * position
  | FAdd' of t' * t' * position
  | FSub' of t' * t' * position
  | FMul' of t' * t' * position
  | FDiv' of t' * t' * position
  | Eq' of t' * t' * position
  | LE' of t' * t' * position
  | If' of t' * t' * t' * position
  | Let' of (Id.t * Type.t) * t' * t' * position
  | Var' of Id.t
  | LetRec' of fundef' * t' * position
  | App' of t' * t' list * position
  | Tuple' of t' list * position
  | LetTuple' of (Id.t * Type.t) list * t' * t' * position
  | Array' of t' * t' * position
  | Get' of t' * t' * position
  | Put' of t' * t' * t' * position
and fundef' = { name' : Id.t * Type.t; args' : (Id.t * Type.t) list; body' : t' }
