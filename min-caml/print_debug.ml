open Printf
open Syntax


let type_to_string ty = "??"

let rec print_syntax exp d () =
  for l = 1 to d do print_string "\t"; done;
match exp with
      | Unit	-> printf "-UNIT- ()\n"
      | Bool(b)	-> printf "-BOOL- %B\n" b
      | Int(i)	-> printf "-INT- %d\n" i
      | Float(f)	-> printf "-FLOAT- %f\n" f
      | Not(e)	-> printf "<NOT>\n"; print_syntax e (d+1) ()
      | Neg(e)	-> printf "<NEG>\n"; print_syntax e (d+1) ()
      | Add(e1, e2)	-> printf "<ADD>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | Sub(e1, e2)	-> printf "<SUB>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | FNeg(e)	-> printf "<FNEG>\n"; print_syntax e (d+1) ()
      | FAdd(e1, e2)	-> printf "<FADD>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | FSub(e1, e2)	-> printf "<FSUB>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | FMul(e1, e2)	-> printf "<FMUL>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | FDiv(e1, e2)	-> printf "<FDIV>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | Eq(e1, e2)	-> printf "<EQ>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | LE(e1, e2)	-> printf "<LE>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | If(e1, e2, e3)	-> printf "<IF>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | Let((x, t), e1, e2)	-> printf "<LET> var: %s, type: %s\n" x (type_to_string t); print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | Var(x)	-> printf "-VAR- var: %s\n" x
      | LetRec({name = (x,t); args = yts; body = e1}, e2)	-> printf "<LETREC> func: %s, type: %s\n" x (type_to_string t); print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | App(e, es)	-> printf "<APP>\n"; print_syntax e (d+1) (); List.iter (fun e -> print_syntax e (d+1) ()) es
      | Tuple(es)	-> printf "<TUPLE>\n"; List.iter (fun e -> print_syntax e (d+1) ()) es
      | LetTuple(xts, e1, e2)	-> printf "<LETTUPLE>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | Array(e1, e2)	-> printf "<ARRAY>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | Get(e1, e2)	-> printf "<GET>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) ()
      | Put(e1, e2, e3)	-> printf "<PUT>\n"; print_syntax e1 (d+1) (); print_syntax e2 (d+1) (); print_syntax e3 (d+1) ()


let debug1 filename =
  let inchan = open_in (filename) in
  try
    print_syntax (Parser.exp Lexer.token (Lexing.from_channel inchan)) 0 ()
  with e -> (close_in inchan; raise e)

