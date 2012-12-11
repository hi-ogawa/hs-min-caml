module Inline where

import qualified IdMod as I
import qualified KNormal as K
import qualified Alpha as Al

import qualified Data.Map as Mp
import Control.Monad.State
import qualified Debug.Trace as DT

type InlineEnv = Mp.Map I.Id ([I.Id], K.T)

inlineMain :: K.T -> Int -> I.Counter -> (K.T, I.Counter)
inlineMain exp limit c = 
  let !_ = DT.trace ("inline depth: "++(show limit)++"...") () in
  runState (f exp limit) c

f :: K.T -> Int -> I.IdState K.T
f exp limit = g Mp.empty exp
  where
    g :: InlineEnv -> K.T -> I.IdState K.T
    g iEnv exp = 
      case exp of
        K.LetRec K.Fundef{K.name=(x,t), K.args=yts, K.body=e1} e2 ->
          do [e1', e2'] <- mapM (g iEnv') [e1, e2]
             return $ K.LetRec K.Fundef{K.name=(x,t), K.args=yts, K.body=e1'} e2'
          where iEnv' = (if (not (recCheck e1 x) && getSize e1 <= limit)
                            || getSize e1 <= (limit `div` 10)
                         then Mp.insert x ((fst.unzip) yts, e1) iEnv
                         else iEnv)
        K.App x ys | Mp.member x iEnv -> do let !_ =DT.trace("inline: "++(show x))""
                                            Al.alphaTrans aEnv e1
          where Just (ys', e1)  = Mp.lookup x iEnv
                aEnv            = Mp.fromList (zip ys' ys)
        K.IfEq x y e1 e2      -> do [e1', e2'] <- mapM (g iEnv) [e1, e2]
                                    return $ K.IfEq x y e1' e2'
        K.IfLe x y e1 e2      -> do [e1', e2'] <- mapM (g iEnv) [e1, e2]
                                    return $ K.IfLe x y e1' e2'
        K.Let xt e1 e2        -> do [e1', e2'] <- mapM (g iEnv) [e1, e2]
                                    return $ K.Let xt e1' e2'
        K.LetTuple xts y e1   -> do e1' <- g iEnv e1
                                    return $ K.LetTuple xts y e1'
        _                     -> return exp
        
recCheck :: K.T -> I.Id -> Bool
recCheck fbody fname = 
  case fbody of
    K.App x ys        -> if or $ map (x==) (x:ys) then True else False
    K.LetRec K.Fundef{K.name=_, K.args=_, K.body=e1} e2 ->
      recCheck e1 fname || recCheck e2 fname
    K.IfEq x y e1 e2            -> recCheck e1 fname || recCheck e2 fname
    K.IfLe x y e1 e2            -> recCheck e1 fname || recCheck e2 fname
    K.Let x e1 e2               -> recCheck e1 fname || recCheck e2 fname
    K.LetTuple xts y e1         -> recCheck e1 fname
    _                           -> False
    
getSize :: K.T -> Int
getSize exp = case exp of
  K.IfEq _ _ e1 e2                      -> 1 + (getSize e1) + (getSize e2)
  K.IfLe _ _ e1 e2                      -> 1 + (getSize e1) + (getSize e2) 
  K.Let  _   e1 e2                      -> 1 + (getSize e1) + (getSize e2) 
  K.LetRec K.Fundef{K.body=e1} e2       -> 1 + (getSize e1) + (getSize e2) 
  K.LetTuple _ _ e1                     -> 1 + (getSize e1)
  _                                     -> 1
