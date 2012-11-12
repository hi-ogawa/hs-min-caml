module ElimEqExp where

import qualified IdMod as I
import qualified KNormal as K

import qualified Data.Set as St
import qualified Data.Map as Mp
import Control.Monad.State
import qualified Debug.Trace as DT

type EEnv = Mp.Map K.T I.Id
type EffectSet = St.Set I.Id    -- side effect variables

type EqState = State EffectSet 

initSet = St.fromList [ "create_array"  
                      , "create_float_array"
                      , "print_char"
                      , "input_char" ]
  
elimEqExpMain :: K.T -> K.T
elimEqExpMain exp = -- let !_ = DT.trace (show eSet) () in
  f Mp.empty exp
  where (_, eSet) = runState (effect exp) initSet
        
        f :: EEnv -> K.T -> K.T
        f eEnv exp = case exp of
          K.Let (x,t) e1 e2 ->
            if St.member x eSet 
            then K.Let (x,t) e1' e2'
            else (if Mp.member e1' eEnv
                  then let !_ = DT.trace ("ElimEqExp: "++(show x)++" = "++(show y)) () in
                       K.Let (x,t) (K.Var y) e2'
                  else K.Let (x,t) e1' e2'')
              where e1'    = f eEnv e1
                    e2'    = f eEnv e2                
                    Just y = Mp.lookup e1' eEnv
                    e2''   = f (Mp.insert e1' x eEnv) e2
          K.LetRec K.Fundef{K.name=(x,t), K.args=yts, K.body=e1} e2 -> 
            K.LetRec K.Fundef{K.name=(x,t), K.args=yts, K.body=(f Mp.empty e1)} (f eEnv e2)
          K.LetTuple xts y e    -> K.LetTuple xts y (f eEnv e)
          K.IfEq x y e1 e2      -> K.IfEq x y (f eEnv e1) (f eEnv e2)
          K.IfLe x y e1 e2      -> K.IfLe x y (f eEnv e1) (f eEnv e2)
          _                     -> exp
          
-- alphaTrans必須
effect :: K.T -> EqState Bool
effect exp = case exp of
  K.Let (x,t) e1 e2     -> 
    do b1 <- effect e1
       if b1 then do modify (\set-> St.insert x set)
                     b2 <- effect e2
                     return (b1 || b2)
             else do b2 <- effect e2
                     return (b1 || b2)                        
  K.LetRec K.Fundef{K.name=(x,t), K.args=yts, K.body=e1} e2 ->
    do b1 <- effect e1
       if b1 then do modify (\set-> St.insert x set)
                     effect e2
             else effect e2
  K.LetTuple xts y e    -> 
    do b1 <- gets (St.member y) 
       if b1 then do modify (\set-> foldl (\set (x,t)-> St.insert x set) set xts)
                     effect e
             else effect e
  K.App x ys            -> gets (\set -> or $ map (\y -> St.member y set) (x:ys))
  K.ExtFunApp x ys      -> gets (\set -> or $ map (\y -> St.member y set) (x:ys))
  K.IfEq x y e1 e2      -> do [b1,b2] <- mapM effect [e1,e2]; return (b1 || b2)
  K.IfLe x y e1 e2      -> do [b1,b2] <- mapM effect [e1,e2]; return (b1 || b2)
  K.Get _ _             -> return True
  K.Put _ _ _           -> return True
  _                     -> return False
  