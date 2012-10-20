open Printf
open KNormal
open Debug_util	(* p_d, argsToStr, tyToStr*)

(* KNormal.t -> string *)
let knoToStr exp =
  match exp with
    | Unit -> "UNIT: ()"
    | Int(i)  -> sprintf "INT: %i" i
    | Float(f) -> sprintf "FLOAT: %f" f
    | Var(x) -> sprintf "VAR: %s" x
    | Neg _ -> "<Neg>" | FNeg _ -> "<FNeg>"
    | Add _ -> "<ADD>" | Sub _ -> "<SUB>" | FAdd _ -> "<FADD>"
    | FSub _ -> "<FSub>" | FMul _ -> "<FMUL>" | FDiv _ -> "<FDIV>"
    | IfEq _ -> "<IFEQ>" | IfLE _ -> "<IFLE>" 
    | SRA _ -> "<SRA>" | SLL _ -> "<SLL>"
    | Get _ -> "<GET>" | Put _ -> "<PUT>"
    | Let ((x,t),_,_) -> sprintf "<LET>: [%s (%s)]" x (tyToStr t)
    | LetRec ({name = (x,t); args = yts}, _) -> sprintf "<LETREC>: [%s (%s)], [args: %s]" x (tyToStr t) (argsToStr yts)
    | App _ -> "<APP>"
    | Tuple _ -> "<TUPLE>" 
    | LetTuple (xts,_,_) -> sprintf "<LETTUPLE>: [binds: %s]" (argsToStr xts)
    | ExtArray _ -> "<ExtARRAY>"
    | ExtFunApp _ -> "<ExtFUNAPP>"

(* KNormal.t -> int -> unit *)
let rec p_kno exp d =
  p_d d "";
  eprintf "%s\n" (knoToStr exp); (* 共通化できない部分はなるべくここで済ませる *)
  (match exp with
  | Unit | Int _ | Float _ | Var _ -> ()
  | Neg x1 | FNeg x1 | ExtArray x1 -> p_d (d+1) ("--var1: " ^ x1 ^ "\n")
  | Add (x1,x2) | Sub (x1,x2) | FAdd (x1,x2) | FSub (x1,x2) | FMul (x1,x2)
  | FDiv (x1,x2) | Get (x1,x2) | SRA (x1, x2) | SLL (x1, x2)
    -> p_d (d+1) ("--var1: " ^ x1 ^ "\n"); p_d (d+1) ("--var2: " ^ x2 ^ "\n")
  | Put (x1,x2,x3) -> p_d (d+1) ("--var1: " ^ x1 ^ "\n"); p_d (d+1) ("--var2: " ^ x2 ^ "\n"); p_d (d+1) ("--var3: " ^ x3 ^ "\n")
  | IfEq (x1,x2,e1,e2) | IfLE (x1,x2,e1,e2)
    -> p_d (d+1) ("--var1: " ^ x1 ^ "\n"); p_d (d+1) ("--var2: " ^ x2 ^ "\n"); p_d (d+1) "--e1--\n"; p_kno e1 (d+1);
      p_d (d+1) "--e2--\n"; p_kno e2 (d+1)
  | Let (_, e1, e2)
    -> p_d (d+1) "--e1--\n"; p_kno e1 (d+1); p_d (d+1) "--e2--\n"; p_kno e2 (d+1) 
  | LetRec ({body = e1}, e2)
    -> p_d (d+1) "--e1--\n"; p_kno e1 (d+1); p_d (d+1) "--e2--\n"; p_kno e2 (d+1)
  | LetTuple (_,x1,e1)
    -> p_d (d+1) ("--var1: " ^ x1 ^ "\n"); p_d (d+1) "--e1--\n"; p_kno e1 (d+1)
  | App (f,xs) | ExtFunApp (f,xs)
    -> p_d (d+1) ("--func: " ^ f ^ "\n"); p_d (d+1) (sprintf "--args: %s\n" (String.concat ", " xs))
  | Tuple xs
    -> p_d (d+1) (String.concat ", " xs))


