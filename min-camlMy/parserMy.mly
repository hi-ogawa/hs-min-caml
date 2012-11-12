%{
(* parserが利用する変数、関数、型などの定義 *)
open Syntax
open Lexing
let addtyp x = (x, Type.gentyp ())
let showPos {pos_fname = f; pos_lnum = l; pos_bol = b; pos_cnum = c} =
  (l, c-b, c)

let rec is_log2 x = 
  if x = 0 then	false
  else if x = 1 then true
  else (if x > 0 && x mod 2 = 0 then is_log2 (x / 2) else false)
let rec log2 x =
  if x = 1 then	0
  else (assert (x mod 2 = 0); (log2 (x / 2)) + 1)
  	
let is_log2_exp e =
	match e with
	| Int' n when is_log2 n -> true
	| Neg' (Int' n, _) when is_log2 n -> true
	| _ -> false
	
let sll_of_mul e1 e2 pos =
	match e2 with
	| Int' n -> SLL' (e1, Int' (log2 n), pos) 
	| Neg' (Int' n, _) -> SLL' (Neg'(e1, pos), Int' (log2 n), pos)
	| _ -> assert false
	
let sra_of_div e1 e2 pos =
	match e2 with
	| Int' n -> SRA' (e1, Int' (log2 n), pos)
	| Neg' (Int' n, _) -> SRA' (Neg' (e1, pos), Int' (log2 n), pos)
	| _ -> assert false
%}

/* 字句を表すデータ型の定義 (caml2html: parser_token) */
%token <bool> BOOL
%token <int> INT
%token <float> FLOAT
%token NOT
%token MINUS
%token PLUS
%token AST
%token SLASH
%token MINUS_DOT
%token PLUS_DOT
%token AST_DOT
%token SLASH_DOT
%token EQUAL
%token LESS_GREATER
%token LESS_EQUAL
%token GREATER_EQUAL
%token LESS
%token GREATER
%token IF
%token THEN
%token ELSE
%token <Id.t> IDENT
%token LET
%token IN
%token REC
%token COMMA
%token ARRAY_CREATE
%token DOT
%token LESS_MINUS
%token SEMICOLON
%token LPAREN
%token RPAREN
%token SQRT
%token OUTPUT
%token INPUT
%token EOF

/* 優先順位とassociativityの定義（低い方から高い方へ） (caml2html: parser_prior) */
%right prec_let
%right SEMICOLON
%right prec_if
%right LESS_MINUS
%left COMMA
%left EQUAL LESS_GREATER LESS GREATER LESS_EQUAL GREATER_EQUAL
%left PLUS MINUS PLUS_DOT MINUS_DOT
%left AST SLASH AST_DOT SLASH_DOT
%right prec_unary_minus
%left prec_app SQRT OUTPUT INPUT
%left DOT

/* 開始記号の定義 */
%type <Syntax.t'> exp
%start exp

%%

simple_exp: /* 括弧をつけなくても関数の引数になれる式 (caml2html: parser_simple) */
| LPAREN exp RPAREN
    { $2 }
| LPAREN RPAREN
    { Unit' }
| BOOL
    { Bool'($1) }
| INT
    { Int'($1) }
| FLOAT
    { Float'($1) }
| IDENT
    { Var'($1) }
| simple_exp DOT LPAREN exp RPAREN
    { Get'($1, $4, rhs_start_pos 2) }

exp: /* 一般の式 (caml2html: parser_exp) */
| simple_exp
    { $1 }
| NOT exp
    %prec prec_app
    { Not'($2, rhs_start_pos 1) }
| MINUS exp
    %prec prec_unary_minus
    { match $2 with
    | Float'(f) -> Float'(-.f) (* -1.23などは型エラーではないので別扱い *)
    | e -> Neg'(e, rhs_start_pos 1) }
| exp PLUS exp /* 足し算を構文解析するルール (caml2html: parser_add) */
    { Add'($1, $3, rhs_start_pos 2) }
| exp MINUS exp
    { Sub'($1, $3, rhs_start_pos 2) }
| exp AST exp
	{ if is_log2_exp $3
	  then sll_of_mul $1 $3 (rhs_start_pos 2)
	  else App' ((Var' "mul"), [$1; $3], rhs_start_pos 2)
	}
| exp SLASH exp
	{ if is_log2_exp $3
	  then sra_of_div $1 $3 (rhs_start_pos 2)
	  else App' ((Var' "div"), [$1; $3], rhs_start_pos 2)
	}
| exp EQUAL exp				/* ocamlの比較が多相だった */
    { Eq'($1, $3, rhs_start_pos 2) }
| exp LESS_GREATER exp
    { Not'(Eq'($1, $3, rhs_start_pos 2), rhs_start_pos 2) }
| exp LESS exp
    { Not'(LE'($3, $1, rhs_start_pos 2), rhs_start_pos 2) }
| exp GREATER exp
    { Not'(LE'($1, $3, rhs_start_pos 2), rhs_start_pos 2) }
| exp LESS_EQUAL exp
    { LE'($1, $3, rhs_start_pos 2) }
| exp GREATER_EQUAL exp
    { LE'($3, $1, rhs_start_pos 2) }
| IF exp THEN exp ELSE exp
    %prec prec_if
    { If'($2, $4, $6, rhs_start_pos 1) }
| MINUS_DOT exp
    %prec prec_unary_minus
    { FNeg'($2, rhs_start_pos 1) }
| exp PLUS_DOT exp
    { FAdd'($1, $3, rhs_start_pos 2) }
| exp MINUS_DOT exp
    { FSub'($1, $3, rhs_start_pos 2) }
| exp AST_DOT exp
    { FMul'($1, $3, rhs_start_pos 2) }
| exp SLASH_DOT exp
    { FDiv'($1, $3, rhs_start_pos 2) }
| LET IDENT EQUAL exp IN exp
    %prec prec_let
    { Let'(addtyp $2, $4, $6, rhs_start_pos 1) }
| LET REC fundef IN exp
    %prec prec_let
    { LetRec'($3, $5, rhs_start_pos 1) }
/*
| OUTPUT exp
   { Output'($2, rhs_start_pos 1)}
| INPUT exp
     { Input'(rhs_start_pos 1)}
*/
| SQRT exp
    { Sqrt'($2, rhs_start_pos 1) }
| exp actual_args
    %prec prec_app
    { App'($1, $2, rhs_start_pos 1) }	/* 部分適応的なことが起こり得る(クロージャ) */
| elems
    { Tuple'($1, rhs_start_pos 1) }
| LET LPAREN pat RPAREN EQUAL exp IN exp
    { LetTuple'($3, $6, $8, rhs_start_pos 1) }
| simple_exp DOT LPAREN exp RPAREN LESS_MINUS exp
    { Put'($1, $4, $7, rhs_start_pos 2) }
| exp SEMICOLON exp
    { Let'((Id.gentmp Type.Unit, Type.Unit), $1, $3, rhs_start_pos 2) }
| ARRAY_CREATE simple_exp simple_exp
    %prec prec_app
    { Array'($2, $3, rhs_start_pos 1) }
| error			/* splecial token for error handling */
    { let (ls, os, cs) = showPos (symbol_start_pos ()) in
      let (_, _, ce) = showPos (symbol_end_pos ()) in
      failwith
	(Printf.sprintf "parse error near characters %d-%d, position (%d, %d)"
	   cs ce ls os)
    }

fundef:
| IDENT formal_args EQUAL exp
    { { name' = addtyp $1; args' = $2; body' = $4 } }

formal_args:
| LPAREN RPAREN
    { [(Id.gentmp Type.Unit), Type.Unit] }
| IDENT formal_args
    { addtyp $1 :: $2 }
| IDENT
    { [addtyp $1] }

actual_args:
| actual_args simple_exp
    %prec prec_app
    { $1 @ [$2] }
| simple_exp
    %prec prec_app
    { [$1] }

elems:
| elems COMMA exp
    { $1 @ [$3] }
| exp COMMA exp
    { [$1; $3] }

pat:
| pat COMMA IDENT
    { $1 @ [addtyp $3] }
| IDENT COMMA IDENT
    { [addtyp $1; addtyp $3] }
