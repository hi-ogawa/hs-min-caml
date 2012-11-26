{
{-# LANGUAGE CPP #-}  
module Parser where

import Lexer as L
import Type as T
import IdMod as I
import Syntax as S

import Control.Monad.State
import Control.Monad.Error
import Control.Monad.Reader
}

%name parser
%tokentype { L.Token }
%error { parseError }
%monad { ParseMonad } { (>>=) } { return }

%token 
int	{ INT $$ }
float	{ FLOAT $$ }
bool	{ BOOL $$ }
id	{ IDENT $$ }
not     { NOT }
"+"	{ PLUS }
"-"	{ MINUS }
"*"	{ AST }
"/"	{ SLASH }
"+."	{ PLUS_DOT }
"-."	{ MINUS_DOT }
"*."	{ AST_DOT }
"/."	{ SLASH_DOT }
"="	{ EQUAL }
"<>"	{ LESS_GREATER }
"<="	{ LESS_EQUAL }
">="	{ GREATER_EQUAL }
"<"	{ LESS }
">"	{ GREATER }
"."	{ DOT }
"<-"	{ LESS_MINUS }
"->"	{ MINUS_GREATER }
-- expansion --
"fun"	{ FUN }
-- 組み込み   --
"fequal"        { FEQUAL }
"fless"         { FLESS }
"fispos"        { FISPOS }
"fisneg"        { FISNEG }
"fiszero"       { FISZERO }
"xor"           { XOR }
"fabs"		{ FABS }
---------------
"sqrt"  { SQRT }
if	{ IF }
then	{ THEN }
else	{ ELSE }
let	{ LET }
rec	{ REC }
in	{ IN }
array	{ ARRAY }
","     { COMMA }
";"	{ SEMICOLON }
"("	{ LPAREN }
")"	{ RPAREN }


%right P_LET
%right ";"
%right P_IF
%right "<-"
%left ","
%left "=" "<>" "<=" ">=" "<" ">"
%left "+" "-" "+." "-."
%left "*" "/" "*." "/."
%right P_NEG
%left P_APP "sqrt" "fequal" "fless" "fispos" "fisneg" "fiszero" "xor" "fabs"
%left "."

%%

E :: { S.T }
	: SimpleE		{ $1 }
        | not E                 { S.Not $2 }
	| E "+" E		{ S.Add $1 $3 }	
	| E "-" E		{ S.Sub $1 $3 }	
	| E "*" E		{ sllOrMul $1 $3 }	
	| E "/" E		{ sraOrDiv $1 $3 }	          
	| E "+." E		{ S.FAdd $1 $3 }	
	| E "-." E		{ S.FSub $1 $3 }	
	| E "*." E		{ S.FMul $1 $3 }	
	| E "/." E		{ S.FDiv $1 $3 }	
	| E "=" E		{ S.Eq $1 $3 }	
	| E "<>" E		{ S.Not (S.Eq $1 $3) }	
	| E "<=" E		{ S.Le $1 $3 }	
	| E ">=" E		{ S.Le $3 $1 }	
	| E "<" E		{ S.Not (S.Le $3 $1) }	
	| E ">" E		{ S.Not (S.Le $1 $3) }	
        -- 組み込み --          
        | "fequal" SimpleE SimpleE	{ S.Eq $2 $3 }
        | "fless"  SimpleE SimpleE      { S.Not (S.Le $3 $2) }
        | "fispos" SimpleE              { S.Not (S.Le $2 (S.Float 0.0)) }
        | "fisneg" SimpleE              { S.Not (S.Le (S.Float 0.0) $2) }
        | "fiszero"SimpleE              { S.Eq $2 (S.Float 0.0) }
        | "xor"    SimpleE SimpleE      { S.Not (S.Eq $2 $3) }
	| "fabs"   SimpleE		{ S.Fabs $2 }
        -- expansion --
        | "fun" FormArgE "->" E {% do{ newf <- (lift.lift) $ I.genNewId "lambda"
                                     ; newt <- (lift) T.genTypeVar
                                     ; return $ S.LetRec S.Fundef{S.name=(newf,newt), S.args=$2, S.body=$4} (S.Var newf)} }
        | "sqrt" E              { S.Sqrt $2 }
	| "-" E %prec P_NEG	{ negOrFneg $2 }
	| "-." E %prec P_NEG	{ S.FNeg $2 }
        | if E then E else E %prec P_IF     { S.If $2 $4 $6 }
	| let id "=" E in E %prec P_LET   	{% do{ newt <- (lift) T.genTypeVar
                                                     ; return $ S.Let ($2, newt) $4 $6} }
	| let rec FundefE in E %prec P_LET    { S.LetRec $3 $5 }
	| E ActArgE %prec P_APP               { S.App $1 $2 }
	| SimpleE "." "(" E ")" "<-" E	{ S.Put $1 $4 $7 }
        | ElemsE                              { S.Tuple $1 }
        | let "(" PatE ")" "=" E in E     { S.LetTuple $3 $6 $8}
	| E ";" E		{% do{ newt <- (lift) T.genTypeVar
                                     ; return $ S.Let ("_", newt) $1 $3 }}
        | array SimpleE SimpleE	{ S.Array $2 $3 }


          
SimpleE :: { S.T }
	: "(" E ")"		{ $2 }
	| "(" ")"		{ S.Unit }
	| bool			{ S.Bool $1 }          
	| int			{ S.Int $1 }
	| float			{ S.Float $1 }
	| id			{ S.Var $1 }          
	| SimpleE "." "(" E ")"	{ S.Get $1 $4 }

FundefE :: { S.Fundef }
        : id FormArgE "=" E	{% do{ newt <- (lift) T.genTypeVar
                                     ; return $ S.Fundef ($1, newt) $2 $4 }}

FormArgE :: { [(I.Id, T.T)] }
	: "(" ")"		{% do{ newt <- (lift) T.genTypeVar
                                     ; return $ [("unit", newt)]}}
	| id FormArgE		{% do{ newt <- lift T.genTypeVar
                                     ; return $ ($1, newt) : $2 }}
	| id			{% do{ newt <- lift T.genTypeVar
                                     ; return $ [($1, newt)] }}

ActArgE :: { [S.T] }
	: ActArgE SimpleE %prec P_APP	{ $1 ++ [$2] }
	| SimpleE %prec P_APP		{ [$1] }
          
ElemsE :: { [S.T] }
        : ElemsE "," E          { $1 ++ [$3] }  
        | E "," E               { [$1, $3] }          
          
PatE :: { [(I.Id, T.T)] }
        : PatE "," id   {% do{ newt  <- lift T.genTypeVar
                             ; return $ $1 ++ [($3, newt)] }}
        | id "," id     {% do{ newt1 <- lift T.genTypeVar
                             ; newt2 <- lift T.genTypeVar
                             ; return $ [($1, newt1), ($3, newt2)]}}

{
-- parser :: [Token] -> ParseMonad S.T  
  
type ParseMonad = 
  ReaderT [L.AlexPosn] (T.TyStateT (I.IdStateT (Either String)))
  
parseError :: [L.Token] -> ParseMonad a
parseError toks = do{ poss <- ask
                    ; let pos = last $ take (length toks) (reverse poss)
                    ; throwError $ "parseError: "++(L.showPosn pos) }

scanAndParse :: String -> Either String (S.T, T.TypeN, I.Counter)
scanAndParse input = 
  do (poss, tokens) <- fmap unzip (L.mainLex input)
     case evalStateT (evalStateT (runReaderT (parser' tokens) poss) 0) 0 of
       Left  msg                -> throwError msg
       Right (exp, n, c)        -> return (exp, n, c)
  where parser' tokens = do exp   <- parser tokens
                            lastN <- lift get
                            lastC <- (lift.lift) get
                            return (exp, lastN, lastC)
       
---- mul, div => sll, sra ----       
sllOrMul :: S.T -> S.T -> S.T       
sllOrMul e1 e2 = 
  if isLog2Exp e2 
  then
    case e2 of
      S.Int i             -> S.SLL e1 (log2 i)
      S.Neg (S.Int i)     -> S.SLL (S.Neg e1) (log2 i)
      _                   -> error (show __LINE__)
  else
    S.App (S.Var "mul") [e1, e2]
  
sraOrDiv e1 e2 = 
  if isLog2Exp e2 
  then
    case e2 of
      S.Int i             -> S.SRA e1 (log2 i)
      S.Neg (S.Int i)     -> S.SRA (S.Neg e1) (log2 i)
      _                   -> error (show __LINE__)
  else
    S.App (S.Var "div") [e1, e2]

       
isLog2Exp :: S.T -> Bool
isLog2Exp exp = case exp of
  S.Int i               | isLog2 i -> True
  S.Neg (S.Int i)       | isLog2 i -> True
  _                     -> False
  
isLog2 :: Int -> Bool  
isLog2 0 = False
isLog2 1 = True
isLog2 i | (i > 0) && (i `mod` 2 == 0) = isLog2 (i `div` 2)
isLog2 _ = False  
  
log2 :: Int -> Int      -- Int i expected positive
log2 1 = 0
log2 i | i `mod` 2 == 0 = log2 (i `div` 2) + 1
log2 _ = error (show __LINE__)

---- neg or fneg
negOrFneg :: S.T -> S.T
negOrFneg exp = case exp of
  S.Float f     -> S.FNeg exp
  S.Int   i     -> S.Neg  exp
  _             -> S.Neg  exp

}
