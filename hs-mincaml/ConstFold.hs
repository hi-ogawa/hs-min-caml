{-# LANGUAGE CPP #-}
module ConstFold where

import qualified Type as T
import qualified IdMod as I
import qualified KNormal as K

import qualified Data.Map as Mp
import Data.Bits(shift)
import qualified Debug.Trace as DT

type ConstEnv = Mp.Map I.Id K.T

constMain :: K.T -> K.T
constMain exp = 
  let !_ = DT.trace "constFold..." () in
  g Mp.empty exp

g :: ConstEnv -> K.T -> K.T
g cEnv exp = 
  (case exp of
      K.Var x  | memInt   x -> K.Int   (findInt x)
      K.Var x  | memFloat x -> K.Float (findFloat x)
      K.Var x  | memTuple x -> K.Tuple (findTuple x)
      K.Neg x  | memInt   x -> K.Int   ( - (findInt x))
      K.FNeg x | memFloat x -> K.Float ( - (findFloat x))
      K.Sqrt x | memFloat x -> K.Float ( sqrt (findFloat x))      
      K.Add x1 x2 | memInt x1 && memInt x2 -> K.Int $ (+) (findInt x1) (findInt x2)
      K.Sub x1 x2 | memInt x1 && memInt x2 -> K.Int $ (-) (findInt x1) (findInt x2)
      K.SLL x  i  | memInt x -> 
        let !_ = DT.trace ("constFold: shiftL "++(show x)) () in        
        K.Int $ shift (findInt x) i
      K.SRA x  i  | memInt x -> 
        let !_ = DT.trace ("constFold: shiftR "++(show x)) () in
        K.Int $ shift (findInt x) (-i)
      K.FAdd x1 x2  | memFloat x1 && memFloat x2 -> K.Float $ (+) (findFloat x1) (findFloat x2)
      K.FSub x1 x2  | memFloat x1 && memFloat x2 -> K.Float $ (-) (findFloat x1) (findFloat x2)
      K.FMul x1 x2  | memFloat x1 && memFloat x2 -> K.Float $ (*) (findFloat x1) (findFloat x2)
      K.FDiv x1 x2  | memFloat x1 && memFloat x2 -> K.Float $ (/) (findFloat x1) (findFloat x2)
      K.IfEq x1 x2 e1 e2 | memInt x1 && memInt x2 -> if (findInt x1) == (findInt x2) then (g cEnv e1) else (g cEnv e2)
      K.IfLe x1 x2 e1 e2 | memInt x1 && memInt x2 -> if (findInt x1) <= (findInt x2) then (g cEnv e1) else (g cEnv e2)
      K.IfEq x1 x2 e1 e2 | memFloat x1 && memFloat x2 -> if (findFloat x1) == (findFloat x2) then (g cEnv e1) else (g cEnv e2)
      K.IfLe x1 x2 e1 e2 | memFloat x1 && memFloat x2 -> if (findFloat x1) <= (findFloat x2) then (g cEnv e1) else (g cEnv e2)      
      K.IfEq x1 x2 e1 e2 -> K.IfEq x1 x2 (g cEnv e1) (g cEnv e2)
      K.IfLe x1 x2 e1 e2 -> K.IfLe x1 x2 (g cEnv e1) (g cEnv e2)
      K.Let (x,t) e1 e2  -> K.Let (x,t) e1' e2'
        where e1' = g cEnv e1
              e2' = g (Mp.insert x e1 cEnv) e2
      K.LetRec K.Fundef{K.name=xt, K.args=yts, K.body=e1} e2 -> 
        K.LetRec K.Fundef{K.name=xt, K.args=yts, K.body=(g cEnv e1)} (g cEnv e2)
      K.LetTuple xts y e | memTuple y -> 
        foldl (\e (xt, y') -> K.Let xt (K.Var y') e) e' (zip xts ys')
        where ys' = findTuple y
              e'  = g cEnv e
      K.LetTuple xts y e              -> K.LetTuple xts y (g cEnv e)
      _                         -> exp )
    where    
      memInt x = case Mp.lookup x cEnv of
        Just (K.Int _) -> True
        _              -> False
      memFloat x = case Mp.lookup x cEnv of
        Just (K.Float _) -> True
        _                -> False
      memTuple x = case Mp.lookup x cEnv of
        Just (K.Tuple _) -> True
        _                -> False
      findInt x = case Mp.lookup x cEnv of
        Just (K.Int i) -> i
        _              -> error ((show __FILE__)++(show __LINE__))
      findFloat x = case Mp.lookup x cEnv of
        Just (K.Float f) -> f
        _                -> error ((show __FILE__)++(show __LINE__))
      findTuple x = case Mp.lookup x cEnv of
        Just (K.Tuple ts) -> ts
        _                 -> error ((show __FILE__)++(show __LINE__))
