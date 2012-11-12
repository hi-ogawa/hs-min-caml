module Main where

import qualified Type as T
import qualified IdMod as I
import qualified Syntax as S
import qualified Lexer as L
import qualified Parser as P
import qualified Typing as Typi
-- import qualified Eval as E
import qualified KNormal as K
import qualified Alpha as Al
import qualified ElimEqExp as EE
import qualified Beta as B
import qualified Assoc as AS
import qualified Inline as IN
import qualified ConstFold as CO
import qualified Elim as EL
import qualified GlobalEnv as G
import qualified Closure as C
import qualified Asm as A
import qualified Virtual as V
import qualified Simm as SI
import qualified RegAlloc as R
import qualified Emit as E
import qualified ArgHandle as Arg

{-Prelude> :set -package data-binary-ieee754-}
import System.Environment as Sys
import qualified Data.Map as Mp
import Control.Exception
import Control.Monad.State
import Control.Monad.Writer
import qualified Debug.Trace as DT
import Data.List(isPrefixOf)

type Command = Int

---main
main = do argOrErr <- fmap Arg.handle Sys.getArgs
          case argOrErr of
            Right (name, iter, limit, 100) -> compile name iter limit
            Right (name, iter, limit, com) -> showTest com  name iter limit 
            Left msg                  -> putStr msg
            
--libraries
libmlPath  = "./lib/libml.ml"
libasmPath = "./lib/libasm.s"

---compile---
compile :: FilePath -> Int -> Int -> IO ()
compile name iter limit = 
  do source   <- readFile (name++".ml")
     libml    <- readFile libmlPath
     libasm   <- readFile libasmPath
     case test 100 iter limit (libml++source) of
       Right output        -> writeFile (name++".s") (output++libasm)
       Left msg            -> putStr msg
       
showTest :: Command -> FilePath -> Int -> Int -> IO ()       
showTest com name iter limit =
  do contents <- readFile (name++".ml")
     libml    <- readFile libmlPath
     case test com iter limit (libml++contents) of       
     -- case test com iter limit contents of              
       Right st         -> putStr st
       Left  msg        -> putStr $ "ERROR: "++msg
      
test :: Command -> Int -> Int -> String -> Either String String
test com iter limit contents =
   do let !_ = DT.trace ("parsing...") () 
      (parsedExp, lastN)           <- P.scanAndParse contents
      if com == 0 then return $ show parsedExp else do
        
      (_, typedExp)                <- Typi.typing parsedExp lastN
      if com == 1 then return $ show typedExp else do      
        
      let (kNizedExp, c0)             =  K.kNizeMain typedExp
      if com == 2 then return $ show kNizedExp else do          
        
      let (alphaExp, c1)              =  Al.alphaMain kNizedExp c0
      if com == 3 then return $ show alphaExp else do          
        
      let !_ = DT.trace ("iter start...") ()                 
      let (iteredExp, c2)              =  loopIter iter c1 limit alphaExp
      if com == 4 then return $ show iteredExp else do
        
      let gloTup                        = G.globalMain iteredExp
      if com == 5 then return $ show gloTup else do          
        
      let (cloExp, fundefs0)          =  C.closMain gloTup iteredExp 
      -- if com == 6  then return $ (show cloExp)++(show fundefs0) else do
      if com == 6  then return $ take 30000 (show cloExp) else do        

      let ((virExp, fundefs1), c3) = V.virtMain gloTup (cloExp, reverse fundefs0) c2
      -- if com == 7 then return $ (show virExp)++(show fundefs1) else do
      if com == 7 then return  $ take 30000 (show virExp) else do        
              
      let (simmExp, fundefs2)          =  SI.simmMain (virExp, fundefs1)
      -- if com == 8 then return $ (show simmExp)++(show fundefs2) else do
      if com == 8 then return $ take 30000 (show simmExp) else do        
        
      let (prog@(regExp, fundefs3), c4) =  R.regAllocMain (simmExp, fundefs2) c3
      -- if com == 9 then return $ (show regExp)++(show fundefs3) else do          
      if com == 9 then return $ take 30000 (show regExp) else do
        
      let output                      =  E.emitMain (G.offset gloTup) prog c4
      return $ output
      

-- optimize loop : (elimExExp) -> beta -> assoc -> inline -> constfold -> elim
loopIter :: Int -> I.Counter -> Int -> K.T -> (K.T, I.Counter)
loopIter n c limit exp = 
  let !_ = DT.trace ("iteration:"++(show n)) () in
  if n > 0 && exp /= exp''
  then loopIter (n-1) c' limit exp''
  else (exp, c)
  -- where (exp', c') = IN.inlineMain (AS.assocMain $ B.betaMain $ EE.elimEqExpMain exp) limit c
  where (exp', c') = IN.inlineMain (AS.assocMain $ B.betaMain exp) limit c 
        exp''      = EL.elimMain $ CO.constMain exp'


-- for debug
cGetFunc :: String -> [C.Fundef] -> C.Fundef
cGetFunc name (f:fs) = 
  if isPrefixOf name x
  then f
  else cGetFunc name fs
  where C.Fundef{ C.name = (I.Label x,t)}
          = f

aGetFunc :: String -> [A.Fundef] -> A.Fundef
aGetFunc name (f:fs) = 
  if isPrefixOf name x
  then f
  else aGetFunc name fs
  where A.Fundef{ A.name = I.Label x}
          = f
      

-------interpreter---------------
-- main :: IO ()
-- main = do fs <- Sys.getArgs
--           either <- fmap interpret (readFile $ head fs)
--           case either of
--             Right output-> putStr output
--             Left err    -> putStr err

-- interpret :: String -> Either String E.OutputLog
-- interpret contents = do (parsedExp, lastN) <- P.scanAndParse contents
--                         (ty, typedExp) <- Typi.typing parsedExp lastN
--                         E.evalMain typedExp
