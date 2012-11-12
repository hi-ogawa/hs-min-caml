module Alpha where

import qualified IdMod as I
import qualified Syntax as S
import qualified KNormal as K

import qualified Data.Map as Mp
import Control.Monad.State
import qualified Debug.Trace as DT

type AlphaEnv = Mp.Map I.Id I.Id

alphaMain :: K.T -> I.Counter -> (K.T, I.Counter)
alphaMain kNizedExp counter = 
  let !_ = DT.trace ("alpha trans...") () in  
  runState (alphaTrans Mp.empty kNizedExp) counter
  
find :: I.Id -> AlphaEnv -> I.Id
find x aEnv = (case Mp.lookup x aEnv of
                  Just x'       -> x'
                  Nothing       -> x)
  
alphaTrans :: AlphaEnv -> K.T -> I.IdState K.T
alphaTrans aEnv exp = case exp of
  K.Unit        -> return $ K.Unit
  K.Int i       -> return $ K.Int i
  K.Float f     -> return $ K.Float f
  K.Neg x       -> return $ K.Neg (find x aEnv)
  K.FNeg x      -> return $ K.FNeg (find x aEnv)
  K.Sqrt x      -> return $ K.Sqrt (find x aEnv)  
  K.Add x1 x2   -> return $ K.Add (find x1 aEnv) (find x2 aEnv)
  K.Sub x1 x2   -> return $ K.Sub (find x1 aEnv) (find x2 aEnv)  
  -- K.Mul x1 x2   -> return $ K.Mul (find x1 aEnv) (find x2 aEnv)
  -- K.Div x1 x2   -> return $ K.Div (find x1 aEnv) (find x2 aEnv)
  K.SLL x i     -> return $ K.SLL (find x aEnv) i
  K.SRA x i     -> return $ K.SRA (find x aEnv) i
  K.FAdd x1 x2   -> return $ K.FAdd (find x1 aEnv) (find x2 aEnv)
  K.FSub x1 x2   -> return $ K.FSub (find x1 aEnv) (find x2 aEnv)
  K.FMul x1 x2   -> return $ K.FMul (find x1 aEnv) (find x2 aEnv)
  K.FDiv x1 x2   -> return $ K.FDiv (find x1 aEnv) (find x2 aEnv)
  K.IfEq x1 x2 e1 e2
    -> do [e1',e2'] <- mapM (alphaTrans aEnv) [e1, e2]
          return $ K.IfEq (find x1 aEnv) (find x2 aEnv) e1' e2'
  K.IfLe x1 x2 e1 e2
    -> do [e1',e2'] <- mapM (alphaTrans aEnv) [e1, e2]
          return $ K.IfLe (find x1 aEnv) (find x2 aEnv) e1' e2'
  K.Var x       -> return $ K.Var (find x aEnv)
  K.Let (x,t) e1 e2     
    -> do newX <- I.genNewId x
          e1' <- alphaTrans aEnv e1
          e2' <- alphaTrans (Mp.insert x newX aEnv) e2          
          return $ K.Let (newX,t) e1' e2'
  K.LetRec (K.Fundef{K.name = (x,t), K.args = yts, K.body = e1}) e2
    -> do let ys = (fst.unzip) yts
          let ts = (snd.unzip) yts
          newX <- I.genNewId x
          newYs <- mapM I.genNewId ys
          let aEnv'  = Mp.insert x newX aEnv
          let aEnv'' = foldl (\env (k,x)-> Mp.insert k x env) aEnv' (zip ys newYs)
          e1' <- alphaTrans aEnv'' e1
          e2' <- alphaTrans aEnv' e2
          return $ K.LetRec (K.Fundef{ K.name = (newX, t)
                                     , K.args = (zip newYs ts)
                                     , K.body = e1'}) e2'
  K.App x ys    -> return $ K.App (find x aEnv) (map (\y -> find y aEnv) ys)
  K.Tuple xs    -> return $ K.Tuple (map (\x -> find x aEnv) xs)
  K.LetTuple xts y e
    -> do let xs = (fst.unzip) xts
          let ts = (snd.unzip) xts
          newXs <- mapM I.genNewId xs
          let aEnv' = foldl (\env (k,x)-> Mp.insert k x env) aEnv (zip xs newXs)
          e' <- alphaTrans aEnv' e
          return $ K.LetTuple (zip newXs ts) (find y aEnv) e'
  K.Get x y     -> return $ K.Get (find x aEnv) (find y aEnv)
  K.Put x y z   -> return $ K.Put (find x aEnv) (find y aEnv) (find z aEnv)
  K.ExtFunApp x ys      -> return $ K.ExtFunApp (find x aEnv) (map (\y -> find y aEnv) ys)
          