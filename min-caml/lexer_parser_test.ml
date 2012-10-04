open Parser
open Lexer

let lexbuf outchan l =
  Parser.exp Lexer.token l

let file f =
  let inchan = open_in (f ^ ".ml") in
(*  let outchan = _ in *)
  try
    lexbuf stdout (Lexing.from_channel inchan);
    close_in inchan;
  with e -> (close_in inchan; raise e)

let () = file Sys.argv.(0)
