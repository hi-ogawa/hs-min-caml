open Printf
open Syntax
open Debug_util

(* Syntax.t -> string *)
let rec synToStr exp =
  match exp with
    | Unit -> "UNIT: ()"
    | Bool(b) -> sprintf "BOOL: %B" b
    | Int(i)  -> sprintf "INT: %i" i
    | Float(f) -> sprintf "FLOAT: %f" f
    | Var(x) -> sprintf "VAR: %s" x
    | Not _ -> "<NOT>"| Neg _ -> "<Neg>" | FNeg _ -> "<FNeg>"
    | Add _ -> "<ADD>" | Sub _ -> "<SUB>" | FAdd _ -> "<FADD>"
    | FSub _ -> "<FSub>" | FMul _ -> "<FMUL>" | FDiv _ -> "<FDIV>"
    | Eq _ -> "<EQ>" | LE _ -> "<LE>" | Array _ -> "<ARRAY>" | Get _ -> "<GET>"
    | If _ -> "<IF>" | Put _ -> "<PUT>"
    | Let ((x,t),_,_) -> sprintf "<LET>: [%s (%s)]" x (tyToStr t)
    | LetRec ({name = (x,t); args = yts; body = e1}, e2) -> sprintf "<LETREC>: [%s (%s)], [args: %s]" x (tyToStr t) (argsToStr yts)
    | App _ -> "<APP>"
    | Tuple _ -> "<TUPLE>" 
    | LetTuple (xts,_,_) -> sprintf "<LETTUPLE>: [binds: %s]" (argsToStr xts)

(* Syntax.t -> int -> unit *)
let rec p_syn exp d =
  p_d d "";
  printf "%s\n" (synToStr exp);	(* 共通化できない部分はなるべくここで済ませる *)
  (match exp with
    | Unit | Bool _ | Int _ | Float _ | Var _
      -> ()
    | Not(e) | Neg(e) | FNeg(e)
      -> p_syn e (d+1)
    | Add(e1, e2) | Sub(e1, e2)	| FAdd(e1, e2) | FSub(e1, e2) | FMul(e1, e2)
    | FDiv(e1, e2) | Eq(e1, e2) | LE(e1, e2) | Array(e1, e2) | Get(e1, e2)
      -> p_syn e1 (d+1) ; p_syn e2 (d+1)
    | If(e1, e2, e3) | Put(e1, e2, e3)
      -> p_d (d+1) "--e1--\n"; p_syn e1 (d+1); p_d (d+1) "--e2--\n"; p_syn e2 (d+1); p_d (d+1) "--e3--\n"; p_syn e3 (d+1)
    | Let(_, e1, e2)
      -> p_d (d+1) "--e1--\n"; p_syn e1 (d+1); p_d (d+1) "--e2--\n"; p_syn e2 (d+1) 
    | LetRec({body = e1}, e2)
      -> p_d (d+1) "--e1--\n"; p_syn e1 (d+1); p_d (d+1) "--e2--\n"; p_syn e2 (d+1)
    | App(e, es)
      -> p_d (d+1) "--e--\n"; p_syn e (d+1) ; p_d (d+1) "--es--\n"; List.iter (fun e -> p_syn e (d+1) ) es
    | Tuple(es)
      -> p_d (d+1) "--es--\n"; List.iter (fun e -> p_syn e (d+1) ) es
    | LetTuple(_, e1, e2)
      -> p_d (d+1) "--e1--\n"; p_syn e1 (d+1); p_d (d+1) "--e2--\n"; p_syn e2 (d+1))

