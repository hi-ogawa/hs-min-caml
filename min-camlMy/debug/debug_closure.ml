open Printf
open Closure
open Debug_util	(* p_d, argsToStr, tyToStr, labelOff *)

(* Closure.t -> string *)
let cloToStr exp =
  match exp with
    | Unit -> "UNIT: ()"
    | Int(i)  -> sprintf "INT: %i" i
    | Float(f) -> sprintf "FLOAT: %f" f
    | Var(x) -> sprintf "VAR: %s" x
    | Neg _ -> "<Neg>" | FNeg _ -> "<FNeg>"
    | Add _ -> "<ADD>" | Sub _ -> "<SUB>" | FAdd _ -> "<FADD>"
    | FSub _ -> "<FSub>" | FMul _ -> "<FMUL>" | FDiv _ -> "<FDIV>"
    | IfEq _ -> "<IFEQ>" | IfLE _ -> "<IFLE>" 
    | Get _ -> "<GET>" | Put _ -> "<PUT>"
    | Let ((x,t),_,_) -> sprintf "<LET>: [%s (%s)]" x (tyToStr t)
    | Tuple _ -> "<TUPLE>" 
    | LetTuple (xts,_,_) -> sprintf "<LETTUPLE>: [binds: %s]" (argsToStr xts)
    | ExtArray _ -> "<ExtARRAY>"
    | MakeCls ((f, t),{entry=fl; actual_fv=ys},_)
      -> sprintf "<MakeCls>: [%s (%s)], entry= %s, free= %s" f (tyToStr t) (labelOff fl) (String.concat ", " ys)
    | AppCls (f,xs) -> "<AppCls>"
    | AppDir (fl,xs) -> "<AppDir>"



(* Closure.t -> int -> unit *)
let rec p_clo exp d = 
  p_d d "";
  printf "%s\n" (cloToStr exp); (* 共通化できない部分はなるべくここで済ませる *)
  (match exp with
  | Unit | Int _ | Float _ | Var _
    -> ()
  | Neg x1 | FNeg x1
    -> p_d (d+1) (sprintf "--var1: %s\n" x1)
  | Add (x1,x2) | Sub (x1,x2) | FAdd (x1,x2) | FSub (x1,x2) | FMul (x1,x2)
  | FDiv (x1,x2) | Get (x1,x2)
    -> p_d (d+1) (sprintf "--var1: %s\n" x1); p_d (d+1) (sprintf "--var2: %s\n" x1)
  | Put (x1,x2,x3)
    -> p_d (d+1) (sprintf "--var1: %s\n" x1); p_d (d+1) (sprintf "--var2: %s\n" x2); p_d (d+1) (sprintf "--var3: %s\n" x3)
  | IfEq (x1,x2,e1,e2) | IfLE (x1,x2,e1,e2)
    -> p_d (d+1) (sprintf "--var1: %s\n" x1); p_d (d+1) (sprintf "--var2: %s\n" x2); p_d (d+1) "--e1--\n"; p_clo e1 (d+1); p_d (d+1) "--e2--\n"; p_clo e2 (d+1)
  | Let (_, e1, e2)
    -> p_d (d+1) "--e1--\n"; p_clo e1 (d+1); p_d (d+1) "--e2--\n"; p_clo e2 (d+1) 
  | LetTuple (_,x1,e1)
    -> p_d (d+1) ("--var1: " ^ x1 ^ "\n"); p_d (d+1) "--e1--\n"; p_clo e1 (d+1)
  | Tuple xs
    -> p_d (d+1) (String.concat ", " xs)
  | MakeCls (_,_, e1) -> p_d (d+1) "--e1--\n"; p_clo e1 (d+1)
  | AppCls (f,xs) -> p_d (d+1) (sprintf "--func: %s\n" f); p_d (d+1) (sprintf "--args: %s\n" (String.concat ", " xs))
  | AppDir (fl,xs) -> p_d (d+1) (sprintf "--func: %s\n" (labelOff fl)); p_d (d+1) (sprintf "--args: %s\n" (String.concat ", " xs))
  | ExtArray l1 -> p_d (d+1) (sprintf "--lavel1: %s\n" (labelOff l1)))



(* Closure.fundef list -> unit *)
let rec p_topl fundefs =
  let subf {name = (l, t); args = xts; formal_fv = yts; body = e1}
      = printf "name = (%s, ,%s); args = %s; freevar = %s\n" (labelOff l) (tyToStr t) (argsToStr xts) (argsToStr yts); p_clo e1 0
  in
  List.iter subf fundefs
