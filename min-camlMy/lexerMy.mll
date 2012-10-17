{
(* lexer�����Ѥ����ѿ����ؿ������ʤɤ���� *)
open ParserMy
open Type
open Lexing

let showPos {pos_fname = f; pos_lnum = l; pos_bol = b; pos_cnum = c} =
  (l, c-b, c)

(*http://plus.kaist.ac.kr/~shoh/ocaml/ocamllex-ocamlyacc/ocamlyacc-tutorial/sec-tracking-locations.html
The lexing engine manages only the pos_cnum field of lexbuf.lex_curr_p with the number of characters read from the start of lexbuf. So you are reponsible for the other fields to be accurate. Before using the location in the parser, you have to set Lexing.lexbuf.lex_curr_p correctly in lexer, using such a function like this:*)

let updateL lexbuf =
  let pos = lexbuf.lex_curr_p in
  lexbuf.lex_curr_p <- {pos with pos_lnum = pos.pos_lnum+1; pos_bol = pos.pos_cnum}
}

(* ����ɽ����ά�� *)
let space = [' ' '\t' '\r']
let digit = ['0'-'9']
let lower = ['a'-'z']
let upper = ['A'-'Z']

rule token = parse
| '\n' { updateL lexbuf;
	 token lexbuf}
| space+
    { token lexbuf }
| "(*"
    { comment lexbuf; (* �ͥ��Ȥ��������ȤΤ���Υȥ�å� *)
      token lexbuf }
| '('
    { LPAREN }
| ')'
    { RPAREN }
| "true"
    { BOOL(true) }
| "false"
    { BOOL(false) }
| "not"
    { NOT }
| digit+ (* �����������Ϥ���롼�� (caml2html: lexer_int) *)
    { INT(int_of_string (Lexing.lexeme lexbuf)) }
| digit+ ('.' digit*)? (['e' 'E'] ['+' '-']? digit+)?
    { FLOAT(float_of_string (Lexing.lexeme lexbuf)) }
| '-' (* -.����󤷤ˤ��ʤ��Ƥ��ɤ�? ��Ĺ����? *)
    { MINUS }
| '+' (* +.����󤷤ˤ��ʤ��Ƥ��ɤ�? ��Ĺ����? *)
    { PLUS }
| '*'
	{ AST }	
| '/'
	{ SLASH }
| "-."
    { MINUS_DOT }
| "+."
    { PLUS_DOT }
| "*."
    { AST_DOT }
| "/."
    { SLASH_DOT }
| '='
    { EQUAL }
| "<>"
    { LESS_GREATER }
| "<="
    { LESS_EQUAL }
| ">="
    { GREATER_EQUAL }
| '<'
    { LESS }
| '>'
    { GREATER }
| "if"
    { IF }
| "then"
    { THEN }
| "else"
    { ELSE }
| "let"
    { LET }
| "in"
    { IN }
| "rec"
    { REC }
| ','
    { COMMA }
| '_'
    { IDENT(Id.gentmp Type.Unit) }
| "Array.create" (* [XX] ad hoc *)
    { ARRAY_CREATE }
| '.'
    { DOT }
| "<-"
    { LESS_MINUS }
| ';'
    { SEMICOLON }
| eof
    { EOF }
| lower (digit|lower|upper|'_')* (* ¾�Ρ�ͽ���פ���Ǥʤ��Ȥ����ʤ� *)
    { IDENT(Lexing.lexeme lexbuf)}
| _
    { let (ls, os, cs) = showPos (Lexing.lexeme_start_p lexbuf) in
      let (_, _, ce) = showPos (Lexing.lexeme_end_p lexbuf) in
      failwith
	(Printf.sprintf "unknown token %s near characters %d-%d, position (%d, %d)"
	   (Lexing.lexeme lexbuf) cs ce ls os)}
and comment = parse
| '\n' {updateL lexbuf;
	comment lexbuf}
| "*)"
    { () }
| "(*"
    { comment lexbuf;
      comment lexbuf }
| eof
    { Format.eprintf "warning: unterminated comment@." }
| _
    { comment lexbuf }
