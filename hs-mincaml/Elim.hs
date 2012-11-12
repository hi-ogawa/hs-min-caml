module Elim where

import qualified IdMod as I
import qualified KNormal as K

import qualified Data.Set as St
import qualified Debug.Trace as DT

elimMain :: K.T -> K.T
elimMain exp = 
  let !_ = DT.trace "elim.." () in
  f exp

f :: K.T -> K.T
f exp = case exp of
  K.Let (x,t) e1 e2 -> 
    (if St.notMember x (K.freeVar e2') && not (effect e1')
     then f e2
     else K.Let (x,t) e1' e2')
      where e1' = f e1
            e2' = f e2
  K.LetRec K.Fundef{K.name=(x,t), K.args=yts, K.body=e1} e2 ->
    (if St.notMember x (K.freeVar e2')
     then e2'
     else K.LetRec K.Fundef{K.name=(x,t), K.args=yts, K.body=e1'} e2')
    where e1' = f e1
          e2' = f e2
  K.LetTuple xts y e ->
    (if and $ map (\x -> St.notMember x (K.freeVar e')) ((fst.unzip) xts)
     then e'
     else K.LetTuple xts y e')
    where e' = f e
  K.IfEq x1 x2 e1 e2 -> K.IfEq x1 x2 (f e1) (f e2)
  K.IfLe x1 x2 e1 e2 -> K.IfLe x1 x2 (f e1) (f e2)
  _             -> exp
  
effect :: K.T -> Bool
effect exp = case exp of
  K.App _ _     -> True
  K.ExtFunApp _ _ -> True
  K.Put _ _ _   -> True
  K.Let _ e1 e2 -> effect e1 || effect e2
  K.LetRec _ e  -> effect e
  K.LetTuple _ _ e  -> effect e
  K.IfEq _ _ e1 e2  -> effect e1 || effect e2
  K.IfLe _ _ e1 e2  -> effect e1 || effect e2
  _             -> False