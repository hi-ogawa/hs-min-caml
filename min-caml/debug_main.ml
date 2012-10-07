open Printf
open Debug_syntax
open Debug_knormal

let () =
  let inchan = open_in Sys.argv.(1) in
  try
    let exp1 = Parser.exp Lexer.token (Lexing.from_channel inchan) in
    let exp2 = Typing.f exp1 in
    let exp3 = KNormal.f exp2 in
    let Closure.Prog (fundefs, exp4) = Closure.f exp3 in
    printf "\n*Lexer*  =>  *Parser*  =>\n\n";
    Debug_syntax.p_syn exp1 0;
    printf "\n*Typing*  =>\n\n";
    Debug_syntax.p_syn exp2 0;
    printf "\n*KNormal*  =>\n\n";
    Debug_knormal.p_kno exp3 0;
    printf "\n*Closure*  =>\n\n";
    Debug_closure.p_clo exp4 0;
    printf "\n*TopLevel Functions*  =>\n\n";
    Debug_closure.p_topl fundefs;
  with e -> (close_in inchan; raise e)
