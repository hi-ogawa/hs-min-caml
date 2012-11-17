{
module Lexer where

import Data.List(isInfixOf, elemIndex)
import Control.Exception(assert)
import qualified Debug.Trace as DT
import Data.Char (chr)  -- ord は alexでimportされる
}

%wrapper "monad"

$digit = 0-9
$lower = a-z
$upper = A-Z


@int    = $digit+
@float  = $digit+ (\. $digit*)? ([e E] [\+ \-]? $digit+)?
@id     = $lower [$digit $lower $upper \_]*

tokens :-

-- type AlexAction result = AlexInput -> Int -> result  

$white+		;
\(		{ mkT LPAREN }
\)		{ mkT RPAREN }
"(*"		{ nested_comment }      -- コメント処理
"true"		{ mkT $ BOOL (True) }
"false"		{ mkT $ BOOL (False) }
"not"		{ mkT NOT }
@int		{ mkTL INT read }
@float          { mkTL FLOAT (read.dotZeroCover) }
\+		{ mkT PLUS }
\-		{ mkT MINUS }
\*		{ mkT AST }
\/		{ mkT SLASH }
"+."		{ mkT PLUS_DOT }
"-."		{ mkT MINUS_DOT }
"*."		{ mkT AST_DOT }
"/."		{ mkT SLASH_DOT }
\=		{ mkT EQUAL }
"<>"		{ mkT LESS_GREATER }
"<="		{ mkT LESS_EQUAL }
">="		{ mkT GREATER_EQUAL }
\<		{ mkT LESS }
\>		{ mkT GREATER }
"->"		{ mkT MINUS_GREATER }
-- expansion----
"fun"		{ mkT FUN }
-- 組み込み関数--
"fequal"        { mkT FEQUAL }
"fless"         { mkT FLESS     }
"fispos"        { mkT FISPOS    }
"fisneg"        { mkT FISNEG    }
"fiszero"       { mkT FISZERO   }
"xor"           { mkT XOR       }
"fabs"		{ mkT FABS	}
----------------
"sqrt"		{ mkT SQRT }
"if"		{ mkT IF }
"then"		{ mkT THEN }
"else"		{ mkT ELSE }
"let"		{ mkT LET }
"in"		{ mkT IN }
"rec"		{ mkT REC }
\,		{ mkT COMMA }
\_		{ mkTL IDENT id }
"Array.create"	{ mkT ARRAY }
\.		{ mkT DOT }
"<-"		{ mkT LESS_MINUS }
\;		{ mkT SEMICOLON }
@id     	{ mkTL IDENT id } 

{
-- action型の生成
mkT :: Token -> AlexInput -> Int -> Alex (TokenAndPos)
mkT tok (p,_,_,str) len = return $ (p, tok)

mkTL :: (b -> Token) -> (String -> b) -> AlexInput -> Int -> Alex (TokenAndPos)
mkTL tokGen f (p,_,_,str) len = return $ (p, tokGen $ f (take len str))
  
-- (StateT AlexState Either a)的なモナド  
-- newtype Alex a = Alex { unAlex :: AlexState -> Either String (AlexState, a) }  

-- トークンを一つスキャンする関数
-- alexMonadScan :: Alex TokenAndPos  
  
-- alexを初期positionからrunStateする関数
-- runAlex :: String -> Alex a -> Either String a    
  
-- エラーをthrowする関数  
-- alexError :: String -> Alex a
-- alexError message = Alex $ \s -> Left message

-- alexMonadScanをsequenceする関数  
mapScan :: Alex [TokenAndPos]
mapScan = do{ tok@(_, t) <- alexMonadScan
            ; if t == EOF then return []
              else do toks <- mapScan
                      return $ tok:toks}
          
-- main
mainLex :: String -> Either String [TokenAndPos]  
mainLex input = runAlex input mapScan

-- main from file
mainFromFile :: FilePath -> IO (Either String [TokenAndPos])
mainFromFile name = fmap mainLex $ readFile name 

-- alexEOFはuser定義(from alex/example/haskell.x.gz)
alexEOF = return (undefined, EOF)

-- error処理
showPosn (AlexPn _ line col) = "("++(show line)++ ", "++(show col)++")"
lexError s = do (pos, _, _, input) <- alexGetInput
                alexError ((showPosn pos)++" - "++ s ++ 
                           (if null input
                            then " at end of file"                       
                            else " before " ++ (show $ head input)))

-- コメント処理
nested_comment :: AlexInput -> Int -> Alex TokenAndPos
nested_comment _ _ = do input <- alexGetInput  
                        go 1 input
  where go 0 input = do alexSetInput input; alexMonadScan
	go n input = do
	  case alexGetByte input of     -- ひたすらgetChar('*' or '(' がでるまで)
	    Nothing             -> err input
	    Just (b,input)      -> do
	      case word8ToChar b of
	    	'*' -> do 
		  case alexGetByte input of
		    Nothing             -> err input
		    Just (b, input') -> do 
                      case word8ToChar b of
                        ')'     -> go (n-1) input'
                        _       -> go n     input       -- ここ重要
	     	'(' -> do
		  case alexGetByte input of
		    Nothing         -> err input
		    Just (b, input') -> do
                      case word8ToChar b of
                        '*'     -> go (n+1) input'
                        _       -> go n     input
	    	_ -> go n input
        err input = do alexSetInput input; lexError "error in nested comment"
        word8ToChar = chr.fromIntegral

---------token 定義-----------------
type TokenAndPos = (AlexPosn, Token)

data Token = INT Int
           | FLOAT Float
           | BOOL Bool
           | IDENT String
           | PLUS  | MINUS  | AST  | SLASH 
           | PLUS_DOT  | MINUS_DOT  | AST_DOT  | SLASH_DOT 
           | EQUAL  | LESS_GREATER  | LESS_EQUAL  | GREATER_EQUAL  
           | LESS  | GREATER 
	   | FUN  | MINUS_GREATER
           | SQRT
           | NOT 
           | DOT  | LESS_MINUS 
           | IF   | THEN  | ELSE  
           | LET | IN | REC  
           | ARRAY
           | SEMICOLON
           | COMMA
           | LPAREN | RPAREN 
           | EOF 
           | FEQUAL | FLESS | FISPOS | FISNEG | FISZERO | XOR
	   | FABS
           deriving (Show, Eq)
                    
----parserで使う
getPos :: TokenAndPos -> AlexPosn
getPos (pos, tok) = pos
                                      
-- ocamlとhaskellのfloatのsyntaxの差を埋める(123. => 123.0, 123.e-45 => 123.0e-45)
dotZeroCover :: String -> String
dotZeroCover str = if last str == '.' then str ++ "0"
                   else if or $ map (\s1-> isInfixOf s1 str) [".e",".E"]
                        then case elemIndex '.' str of
                          Just i  -> (take (i+1) str) ++ "0" ++ (drop (i+1) str)
                          Nothing -> assert False str
                        else str
}