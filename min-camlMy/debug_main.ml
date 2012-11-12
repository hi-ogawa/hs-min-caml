open Printf
open Debug_util	(* tyToStr *)
open Debug_syntax (* synToStr *)
open Lexing (* position周り *)

let showPos {pos_fname = f; pos_lnum = l; pos_bol = b; pos_cnum = c} =
  (l, c-b, c)

let trans inchan =
  let exp1 = ParserMy.exp LexerMy.token (Lexing.from_channel inchan) in
  let exp2 = TypingMy.f exp1 in
  let exp3 = KNormal.f exp2 in
  let exp4 = Alpha.f exp3 in
  let exp5 = ElimEqExp.f exp4 in
  let exp6 = Beta.f exp5 in
  let exp7 = Assoc.f exp6 in
  let exp8 = Inline.f exp7 in
  let exp9 = ConstFold.f exp8 in
  let exp10 = Elim.f exp9 in
  let exp10' = Elim.f(ConstFold.f(Inline.f(Assoc.f(Beta.f(ElimEqExp.f exp10))))) in
  let Closure.Prog (fundefs1, exp11) = Closure.f exp10 in
  let AsmMy.Prog(fundefs2, exp12) = VirtualMy.f (Closure.Prog(fundefs1, exp11)) in
  let AsmMy.Prog(fundefs3, exp13) = SimmMy.f (AsmMy.Prog(fundefs2, exp12)) in
  let AsmMy.Prog(fundefs4, exp14) = RegAllocMy.f (AsmMy.Prog(fundefs3,exp13)) in
(fundefs4, exp14)
  (* (fundefs3, exp13) *)
  (* (fundefs2, exp12) *)
  (* (exp10, exp10') *)
  (* printf "\n*Typing*  =>\n\n"; *)
  (* Debug_syntax.p_syn exp2 0; *)
  (* printf "\n*KNormal*  =>\n\n"; *)
  (* Debug_knormal.p_kno exp3 0; *)
  (* printf "\n*Closure*  =>\n\n"; *)
  (* Debug_closure.p_clo exp4 0; *)
  (* printf "\n*TopLevel Functions*  =>\n\n"; *)
  (* Debug_closure.p_topl fundefs; *)
    

(* usage: #load "mincaml_lib.cma" => #use "debug_main.ml" *)
let debug filename =
  let inchan = open_in filename in
  trans inchan
  (* try *)

  (* with *)
  (*   | Typing_pos.Error (p, t1, t2)  *)
  (*     -> let (l,o,c) = showPos p in *)
  (* 	 (failwith (sprintf "type error: < %s =/= %s > near position (%d, %d)" (tyToStr t1) (tyToStr t2) l o)) *)
  (*   | e -> (close_in inchan; raise e) *)


(* ocaml compiler type error display (ここまでやるのは無理ぽ)
File "./test/error/fib_error.ml", line 3, characters 25-29:
Error: This expression has type bool but an expression was expected of type
         int
*)
