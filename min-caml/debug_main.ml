open Printf
open Debug_util	(* tyToStr *)
open Debug_syntax (* synToStr *)
open Lexing (* position周り *)

let showPos {pos_fname = f; pos_lnum = l; pos_bol = b; pos_cnum = c} =
  (l, c-b, c)

let trans inchan =
  let exp1 = Parser_pos.exp Lexer_pos.token (Lexing.from_channel inchan) in
  let exp2 = Typing_pos.f exp1 in
  let exp3 = KNormal.f exp2 in
  let Closure.Prog (fundefs, exp4) = Closure.f exp3 in
  let AsmMy.Prog(floats, fundefs', exp5) = VirtualMy.f (Closure.Prog(fundefs, exp4)) in
  let AsmMy.Prog(floats', fundefs'', exp6) = RegAllocMy.f (AsmMy.Prog(floats,fundefs',exp5)) in
  printf "\n*Typing*  =>\n\n";
  Debug_syntax.p_syn exp2 0;
  printf "\n*KNormal*  =>\n\n";
  Debug_knormal.p_kno exp3 0;
  printf "\n*Closure*  =>\n\n";
  Debug_closure.p_clo exp4 0;
  printf "\n*TopLevel Functions*  =>\n\n";
  Debug_closure.p_topl fundefs;
  (floats', fundefs'', exp6)
    

(* usage: #load "mincaml_lib.cma" => #use "debug_main.ml" *)
let debug filename =
  let inchan = open_in filename in
  try
    trans inchan
  with
    | Typing_pos.Error (p, t1, t2) 
      -> let (l,o,c) = showPos p in
	 (failwith (sprintf "type error: < %s =/= %s > near position (%d, %d)" (tyToStr t1) (tyToStr t2) l o))
    | e -> (close_in inchan; raise e)
    
(* let () = *)
(*   let inchan = open_in Sys.argv.(1) in *)
(*   try *)
(*     ignore (trans inchan) *)
(*   with *)
(*     | Typing_pos.Error (p, t1, t2) *)
(*       -> let (l,o,c) = showPos p in *)
(* 	 (failwith (sprintf "type error: < %s =/= %s > near position (%d, %d)" (tyToStr t1) (tyToStr t2) l o)) *)
(*     | e -> (close_in inchan; raise e) *)


(* ocaml compiler type error display (ここまでやるのは無理ぽ)
File "./test/error/fib_error.ml", line 3, characters 25-29:
Error: This expression has type bool but an expression was expected of type
         int
*)
