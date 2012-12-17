module Main where

import qualified Type as T
import qualified IdMod as I
import qualified Syntax as S
import qualified Lexer as L
import qualified Parser as P
--import qualified PartialEval as PE
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
import qualified IfExpand as IE
import qualified GlobalEnv as G
import qualified Closure as C
import qualified Asm as A
import qualified Virtual as V
import qualified Simm as SI
import qualified RegAlloc as R
import qualified Emit as E
import qualified ElimJump as EJ
import qualified ArgHandle as Arg
import qualified Block as BL
import qualified Liveness as LI


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
       Right output        -> writeFile (name++".s") (EJ.elimJumpMain (output++libasm))
       -- Right output        -> writeFile (name++".s") (output++libasm)
       Left msg            -> putStr msg
       
showTest :: Command -> FilePath -> Int -> Int -> IO ()       
showTest com name iter limit =
  do contents <- readFile (name++".ml")
     libml    <- readFile libmlPath
     -- case test com iter limit (libml++contents) of
     case test com iter limit contents of
       Right st         -> putStr st
       Left  msg        -> putStr $ "ERROR: "++msg
      
test :: Command -> Int -> Int -> String -> Either String String
test com iter limit contents =
   do let !_ = DT.trace ("parsing...") () 
      (parsedExp, n0, c0)           <- P.scanAndParse contents
      if com == 0 then return $ show parsedExp else do
        
      (typedExp, c0')               <- Typi.typiMain parsedExp c0 n0
      if com == 1 then return $ show typedExp else do      
        
        -- だめな部分適用
      -- let (typedExp', c0'')             =  PE.partMain typedExp c0'
      -- if com == 2 then return $ show typedExp' else do
        
      -- let (kNizedExp, c1)             =  K.kNizeMain typedExp' c0''
      -- if com == 3 then return $ show kNizedExp else do
        
      let (kNizedExp, c1)             =  K.kNizeMain typedExp c0'
      if com == 2 then return $ show kNizedExp else do
        
      let (alphaExp, c2)              =  Al.alphaMain kNizedExp c1
      if com == 3 then return $ show alphaExp else do          
        
      let !_ = DT.trace ("iter start...") ()                 
      let (iteredExp, c3)              =  loopIter iter c2 limit $ EL.elimMain $ B.betaMain $ EE.elimEqExpMain alphaExp
      -- let (iteredExp, c3)              =  loopIter iter c2 limit alphaExp
      if com == 4 then return $ show iteredExp else do
        
      let gloTup                        = G.globalMain iteredExp
      -- let gloTup                 = (Mp.empty, Mp.empty, Mp.empty, 4) :: G.GloTup
      if com == 5 then return $ show gloTup else do
        
      let (cloExp, fundefs0)          =  C.closMain gloTup iteredExp 
      if com == 6  then return $ (show cloExp)++(show fundefs0) else do

      let ((virExp, fundefs1), c4) = V.virtMain gloTup (cloExp, reverse fundefs0) c3
      if com == 7 then return $ (show virExp)++(show fundefs1) else do
              
      let (simmExp, fundefs2)          =  SI.simmMain (virExp, fundefs1)
      if com == 8 then return $ (show simmExp)++(show fundefs2) else do
      -- if com == 8 then return $ show $ aGetFunc "bilinear" fundefs2 else do
        
      -- block分割 --
      let (fundefsB, cB)          =  BL.blockMain (simmExp, fundefs2) c4
      if com == 11 then return $ (show fundefsB) else do
      -- 生存解析 --
      let fundefsL          =  LI.liveMain fundefsB
      if com == 12 then return $ (show fundefsL) else do
      -- レジスタ彩色笑 --
        
        
      let (prog@(regExp, fundefs3), c5) =  R.regAllocMain (simmExp, fundefs2) c4
      if com == 9 then return $ (show regExp)++(show fundefs3) else do
      -- if com == 9 then return $ show $ aGetFunc "bilinear" fundefs3 else do
        
      let output                      =  E.emitMain ((\(_,_,_,d)->d) gloTup) prog c5
      return $ output
      

-- optimize loop : (elimExExp) => beta => assoc => inline => constfold => elim
loopIter :: Int -> I.Counter -> Int -> K.T -> (K.T, I.Counter)
loopIter n c limit exp = 
  let !_ = DT.trace ("iteration:"++(show n)) () in
  if n > 0 && exp /= exp''
  then loopIter (n-1) c' limit exp''
  else (exp, c)
  -- else let lastExp = EL.elimMain $ B.betaMain $ EE.elimEqExpMain exp 
  --      in (lastExp, c)
  where (exp', c') = IN.inlineMain (AS.assocMain $ B.betaMain exp) limit c 
        exp''      = IE.ifExpandMain $ EL.elimMain $ CO.constMain exp'


-- for debug
cGetFunc :: String -> [C.Fundef] -> C.Fundef        
cGetFunc name (f:fs) = 
  if isPrefixOf (name++".") x
  then f
  else cGetFunc name fs
  where C.Fundef{ C.name = (I.Label x,t)} = f

aGetFunc :: String -> [A.Fundef] -> A.Fundef
aGetFunc name (f:fs) = 
  if isPrefixOf (name++".") x
  then f
  else aGetFunc name fs
  where A.Fundef{ A.name = I.Label x} = f
      

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
