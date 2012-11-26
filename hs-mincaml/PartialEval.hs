module PartialEval where

import Type  as T
import IdMod as I
import Syntax as S
import Typing as Typi

import Data.Maybe(fromJust)
import qualified Data.Map as Mp
import Control.Monad.State
import qualified Debug.Trace as DT

partMain :: S.T -> I.Counter -> (S.T, I.Counter)
partMain exp c = (exp', c')
  where ((exp', _), c') = runState (f Typi.tEnvInit exp) c

f :: Mp.Map I.Id T.T -> S.T -> I.IdState (S.T, T.T)
f tEnv exp = case exp of
  S.Unit      -> return (exp, T.Unit)
  S.Bool _    -> return (exp, T.Bool)
  S.Int _     -> return (exp, T.Int )
  S.Float _   -> return (exp, T.Float)
  S.Not e     -> (, T.Bool)  `liftM` (fmap fst $ f tEnv e)
  S.Neg e     -> (, T.Int )  `liftM` (fmap fst $ f tEnv e)
  S.FNeg e    -> (, T.Float) `liftM` (fmap fst $ f tEnv e)
  S.Fabs e    -> (, T.Float) `liftM` (fmap fst $ f tEnv e)
  S.Sqrt e    -> (, T.Float) `liftM` (fmap fst $ f tEnv e)
  S.Add e1 e2 -> do [e1', e2'] <- mapM ((fmap fst).(f tEnv)) [e1, e2]
                    return (S.Add e1' e2', T.Int)
  S.Sub e1 e2 -> do [e1', e2'] <- mapM ((fmap fst).(f tEnv)) [e1, e2]
                    return (S.Sub e1' e2', T.Int)
  S.SLL e i   -> (\e' -> (S.SLL e' i, T.Int)) `liftM` (fmap fst $ f tEnv e)
  S.SRA e i   -> (\e' -> (S.SLL e' i, T.Int)) `liftM` (fmap fst $ f tEnv e)
  S.FAdd e1 e2        -> do [e1', e2'] <- mapM ((fmap fst).(f tEnv)) [e1, e2]
                            return (S.FAdd e1' e2', T.Float)
  S.FSub e1 e2        -> do [e1', e2'] <- mapM ((fmap fst).(f tEnv)) [e1, e2]
                            return (S.FSub e1' e2', T.Float)
  S.FMul e1 e2        -> do [e1', e2'] <- mapM ((fmap fst).(f tEnv)) [e1, e2]
                            return (S.FMul e1' e2', T.Float)
  S.FDiv e1 e2        -> do [e1', e2'] <- mapM ((fmap fst).(f tEnv)) [e1, e2]
                            return (S.FDiv e1' e2', T.Float)
  S.Eq e1 e2          -> do [e1', e2'] <- mapM ((fmap fst).(f tEnv)) [e1, e2]
                            return (S.Eq e1' e2', T.Bool)
  S.Le e1 e2          -> do [e1', e2'] <- mapM ((fmap fst).(f tEnv)) [e1, e2]
                            return (S.Le e1' e2', T.Bool)
  S.If e1 e2 e3       -> do [(e1',_), (e2',_), (e3',t)] <- mapM (f tEnv) [e1, e2, e3]
                            return (S.If e1' e2' e3', t)
  S.Var id            -> return (exp, fromJust $ Mp.lookup id tEnv)
  S.Let (x, t) e1 e2  -> 
    do (e1', _ ) <- f tEnv e1
       (e2', t2) <- f (Mp.insert x t tEnv) e2
       return $ (S.Let (x, t) e1' e2', t2)
  S.LetRec (S.Fundef {S.name=(x,t), S.args=yts, S.body=e1}) e2 ->
    do (e1', _ ) <- f (foldl (\env (x,t) -> Mp.insert x t env) tEnv ((x,t):yts)) e1
       (e2', t2) <- f (Mp.insert x t tEnv) e2
       return (S.LetRec (S.Fundef {S.name=(x,t), S.args=yts, S.body=e1'}) e2', t2)
  S.App e es          -> 
    do (e', ft) <- f tEnv e
       let T.Fun argts rett = transFunType ft
       ets'     <- mapM (f tEnv) es                  
       (if length argts == length es
        then return (S.App e' (fst $ unzip ets'), rett)
        else 
          do let newts = drop (length es) argts
             let newft = T.Fun newts rett
             newys <- mapM I.genTmpId newts
             let newyts = zip newys newts
             newX  <- I.genNewId "PEfunc"
             let newbody = S.App e' $ ((fst.unzip) ets' ++ (map S.Var newys))
             return (S.LetRec S.Fundef {S.name = (newX, newft), S.args = newyts
                                       ,S.body = newbody} (S.Var newX), newft)
         )
   where transFunType (T.Fun argts (T.Fun argts' rett)) = transFunType $ T.Fun (argts ++ argts') rett
         transFunType (T.Fun  argts rett)                = T.Fun argts rett
        
  S.Tuple es          -> do ets' <- mapM (f tEnv) es
                            return (S.Tuple (fst $ unzip ets'), T.Tuple (snd $ unzip ets'))
  S.LetTuple xts e1 e2-> 
    do (e1', _ ) <- f tEnv e1 
       (e2', t2) <- f (foldl (\env (x, t) -> Mp.insert x t env) tEnv xts) e2
       return (S.LetTuple xts e1' e2', t2)
  S.Array e1 e2       -> do [(e1',_), (e2',t)] <- mapM (f tEnv) [e1, e2]
                            return (S.Array e1' e2', T.Array t)
  S.Get e1 e2         -> do [(e1', T.Array t), (e2',_)] <- mapM (f tEnv) [e1, e2]
                            return (S.Get e1' e2', t)
  S.Put e1 e2 e3      -> do [(e1',_), (e2',_), (e3',_)] <- mapM (f tEnv) [e1, e2, e3]
                            return (S.Put e1' e2' e3', T.Unit)
  