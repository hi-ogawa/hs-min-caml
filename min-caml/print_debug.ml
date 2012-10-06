open Printf
open Syntax

(* Type.t -> string *)
let rec tyToStr ty = 
  match ty with
  | Type.Unit -> "unit" | Type.Bool -> "bool" | Type.Int -> "int" | Type.Float -> "float"
  | Type.Fun (ts, t) -> "#fun " ^ "[args: " ^ (String.concat ", " (List.map (fun t1 -> tyToStr t1) ts)) ^ "], " ^ "[result: " ^ (tyToStr t) ^ "]"
  | Type.Tuple ts -> "#tuple [" ^ (String.concat ", " (List.map (fun t1 -> tyToStr t1) ts)) ^ "]"
  | Type.Array t -> "#array [" ^ (tyToStr t) ^ "]"
  | Type.Var r -> 
    (match !r with
      | None -> "tvar: None"
      | Some sty -> "tvar: [" ^ (tyToStr sty) ^ "]")

(* (Id.t * Type.t) list -> string *)
let rec argsToStr args =
  String.concat ", " (List.map (fun (x,t) -> x ^ " (" ^ (tyToStr t) ^ ")") args)

(* int -> string -> unit *)
let rec p_d depth str =
  for l = 1 to depth do print_string "    "; done;
  print_string str

(* Syntax.t -> string *)
let rec synToStr exp =
  match exp with
    | Unit -> "-UNIT-: ()"
    | Bool(b) -> sprintf "-BOOL-: %B" b
    | Int(i)  -> sprintf "-INT-: %i" i
    | Float(f) -> sprintf "-FLOAT-: %f" f
    | Var(x) -> sprintf "-VAR-: %s" x
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
  printf "%s\n" (synToStr exp);
  (match exp with
    | Unit | Bool _ | Int _ | Float _ | Var _
      -> ()
    | Not(e) | Neg(e) | FNeg(e)
      -> p_syn e (d+1)
    | Add(e1, e2) | Sub(e1, e2)	| FAdd(e1, e2) | FSub(e1, e2) | FMul(e1, e2)
    | FDiv(e1, e2) | Eq(e1, e2) | LE(e1, e2) | Array(e1, e2) | Get(e1, e2)
      -> p_syn e1 (d+1) ; p_syn e2 (d+1)
    | If(e1, e2, e3) | Put(e1, e2, e3)
      -> p_syn e1 (d+1); p_syn e2 (d+1); p_syn e3 (d+1)
    | Let(_, e1, e2)
      -> p_syn e1 (d+1) ; p_syn e2 (d+1) 
    | LetRec({body = e1}, e2)
      -> p_syn e1 (d+1) ; p_syn e2 (d+1)
    | App(e, es)
      -> p_syn e (d+1) ; List.iter (fun e -> p_syn e (d+1) ) es
    | Tuple(es)
      -> List.iter (fun e -> p_syn e (d+1) ) es
    | LetTuple(xts, e1, e2)
      -> p_syn e1 (d+1) ; p_syn e2 (d+1))

let debug1 filename =
  let inchan = open_in (filename) in
  try
    p_syn (Typing.f (Parser.exp Lexer.token (Lexing.from_channel inchan))) 0;
  with e -> (close_in inchan; raise e)

