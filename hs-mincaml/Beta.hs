module Beta where

import qualified IdMod as I
import qualified KNormal as K

import qualified Data.Map as Mp
import qualified Debug.Trace as DT

type BetaEnv = Mp.Map I.Id I.Id

betaMain :: K.T -> K.T
betaMain exp = 
  let !_ = DT.trace "beta .." () in
  g Mp.empty exp

g :: BetaEnv -> K.T -> K.T
g bEnv exp = case exp of
  K.Unit        -> K.Unit
  K.Int   i     -> K.Int i
  K.Float f     -> K.Float f
  K.Neg x       -> K.Neg (find bEnv x)
  K.Add x1 x2   -> K.Add (find bEnv x1) (find bEnv x2)
  K.Sub x1 x2   -> K.Sub (find bEnv x1) (find bEnv x2)
  K.SLL x  i    -> K.SLL (find bEnv x) i
  K.SRA x  i    -> K.SRA (find bEnv x) i
  K.FNeg x      -> K.FNeg (find bEnv x)
  K.Sqrt x      -> K.Sqrt (find bEnv x)  
  K.FAdd x1 x2  -> K.FAdd (find bEnv x1) (find bEnv x2)
  K.FSub x1 x2  -> K.FSub (find bEnv x1) (find bEnv x2)
  K.FMul x1 x2  -> K.FMul (find bEnv x1) (find bEnv x2)
  K.FDiv x1 x2  -> K.FDiv (find bEnv x1) (find bEnv x2)
  K.IfEq x1 x2 e1 e2 -> K.IfEq (find bEnv x1) (find bEnv x2) (g bEnv e1) (g bEnv e2)
  K.IfLe x1 x2 e1 e2 -> K.IfLe (find bEnv x1) (find bEnv x2) (g bEnv e1) (g bEnv e2)
  K.Var x       -> K.Var (find bEnv x)
  K.Let (x,t) e1 e2 -> 
    case g bEnv e1 of
      K.Var y   -> g (Mp.insert x y bEnv) e2
      e1'       -> K.Let (x,t) e1' (g bEnv e2)
  K.LetRec K.Fundef{K.name=xt, K.args=yts, K.body=e1} e2 ->
    K.LetRec K.Fundef{K.name=xt, K.args=yts, K.body=(g bEnv e1)} (g bEnv e2)
  K.App   x ys       -> K.App (find bEnv x) (map (find bEnv) ys)
  K.Tuple xs         -> K.Tuple (map (find bEnv) xs)
  K.LetTuple xts y e -> K.LetTuple xts (find bEnv y) (g bEnv e)
  K.Get      x y     -> K.Get (find bEnv x) (find bEnv y)
  K.Put      x y z   -> K.Put (find bEnv x) (find bEnv y) (find bEnv z)
  K.ExtFunApp x ys   -> K.ExtFunApp (find bEnv x) (map (find bEnv) ys)
  
find :: BetaEnv -> I.Id -> I.Id
find bEnv x = (case Mp.lookup x bEnv of
                  Just x'       -> x'
                  Nothing       -> x)