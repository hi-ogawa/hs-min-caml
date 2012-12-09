module Liveness where

import qualified Type as T
import qualified IdMod as I
import qualified Asm as As
import qualified Block as Bl

import qualified Data.Set as St
import qualified Data.Map as Mp
import Control.Monad.State


liveAnalysisF :: Fundef
liveAnalysisF Fundef{fId = f, fArgs = is, fFargs = fs, fRet = retT,
                     fBlocks = bmap, fHead = first
                     {-fDefRegs = _, fcalls = _-} } = undefined
                                                      

liveAnalysisB Block{bId = bid, bStmts = ss,
                    bPred = preds, bSucc = succs
                    {-bLiveIn = _, bLiveOut = _-}} = undefined
  where succLives = undefined


liveAnalysisS Stmt{sInst = exp {- sLiveIn = _, sLiveOut = _-}} nextIns =
  case exp of
    Nop              -> 
    Set  (x,t) i     -> 
    SetF (x,t) f     -> 
    SetL (x,t) l     -> 
    Mov (x,t) x      -> 
    Neg (x,t) x      -> 
    Add (x,t) x y'   -> 
    Sub (x,t) x y'   -> 
    SLL (x,t) x i    -> 
    SRA (x,t) x i    -> 
    Ld  (x,t) x y'   -> 
    St  x y z'       -> 
    FMov (x,t) x     -> 
    FNeg (x,t) x     -> 
    Fabs (x,t) x     -> 
    Sqrt (x,t) x     -> 
    FAdd (x,t) x y   -> 
    FSub (x,t) x y   -> 
    FMul (x,t) x y   -> 
    FDiv (x,t) x y   -> 
    LdF  (x,t) x y'  -> 
    StF  x y z'      -> 
    IfEq  x y' b1 b2 ->
    IfLe  x y' b1 b2 ->
    IfGe  x y' b1 b2 -> 
    IfFEq  x y b1 b2 -> 
    IfFLe  x y b1 b2 -> 
    CallCls x ys zs  -> 
    CallDir l ys zs  -> 
    Save    _ _      -> 
    Restore _        -> 