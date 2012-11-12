module Assoc where

import qualified IdMod as I
import qualified KNormal as K
import qualified Debug.Trace as DT

assocMain :: K.T -> K.T
assocMain exp = 
  let !_ = DT.trace "assoc.." () in
  f exp

f :: K.T -> K.T
f exp = case exp of
  K.IfEq x1 x2 e1 e2 -> K.IfEq x1 x2 (f e1) (f e2)
  K.IfLe x1 x2 e1 e2 -> K.IfLe x1 x2 (f e1) (f e2)
  K.Let xt e1 e2     -> insert (f e1)
    where insert e = case e of
            K.Let yt e3 e4              -> K.Let yt e3 (insert e4)
            K.LetRec fund e3            -> K.LetRec fund (insert e3)
            K.LetTuple yts z e3         -> K.LetTuple yts z (insert e3)
            _                           -> K.Let xt e (f e2)
  K.LetRec K.Fundef{K.name=xt, K.args=yts, K.body=e1} e2 ->
    K.LetRec K.Fundef{K.name=xt, K.args=yts, K.body=(f e1)} (f e2)
  K.LetTuple xts y e -> K.LetTuple xts y (f e)
  _                  -> exp