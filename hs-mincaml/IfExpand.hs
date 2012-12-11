module IfExpand where

import qualified KNormal as K
import qualified Inline as Inl

ifExpandMain :: K.T -> K.T
ifExpandMain exp = g exp
  
g :: K.T -> K.T  
g exp =
  case exp of
    K.Let xt (K.IfEq a b e1 e2) e3 | Inl.getSize e3 <= 20
      -> K.IfEq a b (K.Let xt e1 e3) (K.Let xt e2 e3)
    K.Let xt (K.IfLe a b e1 e2) e3 | Inl.getSize e3 <= 20
      -> K.IfLe a b (K.Let xt e1 e3) (K.Let xt e2 e3)
    K.Let xt e1 e2 -> K.Let xt (g e1) (g e2)
    K.LetRec f e2 -> K.LetRec f{K.body = g (K.body f)} (g e2)
    K.IfEq x1 x2 e1 e2  -> K.IfEq x1 x2 (g e1) (g e2)
    K.IfLe x1 x2 e1 e2  -> K.IfLe x1 x2 (g e1) (g e2)
    K.LetTuple xts y e  -> K.LetTuple xts y (g e)
    _                   -> exp
