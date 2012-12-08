module Simm where

import qualified IdMod as I
import qualified Asm as A

import qualified Data.Map as Mp
import qualified Debug.Trace as DT

import Data.Bits(shift)

type SimmEnvI = Mp.Map I.Id Int
type SimmEnvF = Mp.Map I.Id Float

simmMain :: A.Prog -> A.Prog
simmMain (exp, fundefs) = 
  let !_ = DT.trace ("simm...") () in  
  (exp', fundefs')
  where exp'     = gE Mp.empty Mp.empty exp
        fundefs' = map gFunc fundefs
        
gFunc :: A.Fundef -> A.Fundef
gFunc A.Fundef{ A.name = l, A.args = ys, A.fargs = zs, A.body = e, A.ret  = t } = 
  A.Fundef{ A.name = l, A.args = ys, A.fargs = zs, A.body = e', A.ret  = t }
  where e' = gE Mp.empty Mp.empty e

gE :: SimmEnvI -> SimmEnvF -> A.T -> A.T
gE sEnvI sEnvF e = case e of
  A.Ans exp                 -> A.Ans (gExp sEnvI sEnvF exp)
  A.Let (x, t) (A.Set i) e' | (-4096 <= i) && (i < 4096) && (not $ A.isReg x)->
    if elem x (A.freeVar e'')
    then A.Let (x, t) (A.Set i) e''
    else let !_ = DT.trace ("simm-ELIM: "++(show x)) () in e''
    where e'' = gE (Mp.insert x i sEnvI) sEnvF e' 
  A.Let (x, t) (A.SetF f) e' | (f == (-1.0) || f == 0.0 || f == 1.0 || f == 2.0 || f == (-0.2) || f == (-0.1)) && (not $ A.isReg x)->
    if elem x (A.freeVar e'')
    then A.Let (x, t) (A.SetF f) e''
    else let !_ = DT.trace ("simm-ELIM: "++(show x)) () in e''
    where e'' = gE sEnvI (Mp.insert x f sEnvF) e' 
  A.Let xt (A.SLL y i) e'   -> 
    case Mp.lookup y sEnvI of
      Just yi -> -- let !_ = DT.trace ("simm: shiftL "++(show yi)++"<<"++(show i)++" = "++(show xt)) () in
        gE sEnvI sEnvF $ A.Let xt (A.Set $ shift yi i) e'
      Nothing -> A.Let xt (A.SLL y i) (gE sEnvI sEnvF e')
  A.Let xt (A.SRA y i) e'   -> 
    case Mp.lookup y sEnvI of
      Just yi -> --let !_ = DT.trace ("simm: shiftR "++(show yi)++"<<"++(show i)) () in
        gE sEnvI sEnvF $ A.Let xt (A.Set $ shift yi (-i)) e'
      Nothing -> A.Let xt (A.SRA y i) (gE sEnvI sEnvF e')      
  A.Let xt     exp       e' -> A.Let xt (gExp sEnvI sEnvF exp) (gE sEnvI sEnvF e')
  
gExp :: SimmEnvI -> SimmEnvF -> A.Exp -> A.Exp 
gExp sEnvI sEnvF exp = case exp of
  A.Add x (A.V y)   | Mp.member y sEnvI ->
    let Just yi = Mp.lookup y sEnvI in A.Add x (A.C yi)
  A.Add x (A.V y)   | Mp.member x sEnvI -> 
    let Just xi = Mp.lookup x sEnvI in A.Add y (A.C xi)
  A.Sub x (A.V y)   | Mp.member y sEnvI -> 
    let Just yi = Mp.lookup y sEnvI in A.Sub x (A.C yi)
  -- load, store --
  A.Ld  x (A.V y)   | Mp.member y sEnvI -> 
    let Just yi = Mp.lookup y sEnvI in gExp sEnvI sEnvF $ A.Ld  x (A.C yi)
  A.St  x  y (A.V z)| Mp.member z sEnvI -> 
    let Just zi = Mp.lookup z sEnvI in gExp sEnvI sEnvF  $ A.St  x y (A.C zi)
  A.LdF x (A.V y)   | Mp.member y sEnvI -> 
    let Just yi = Mp.lookup y sEnvI in gExp sEnvI sEnvF $ A.LdF x (A.C yi)
  A.StF x  y (A.V z)| Mp.member z sEnvI -> 
    let Just zi = Mp.lookup z sEnvI in gExp sEnvI sEnvF $ A.StF x y (A.C zi)
                                      
  A.Ld  x (A.C i)   | Mp.member x sEnvI -> 
    -- let !_ = DT.trace ("IMMEDIATE-reg-offset1"++(show x)) () in
    let Just xi = Mp.lookup x sEnvI in A.Ld A.regZr (A.C $ xi + i)
  A.St  x  y (A.C i)| Mp.member y sEnvI -> 
    -- let !_ = DT.trace ("IMMEDIATE-reg-offset2"++(show y)) () in
    let Just yi = Mp.lookup y sEnvI in A.St x A.regZr (A.C $ yi + i)
  A.LdF x (A.C i)   | Mp.member x sEnvI -> 
    -- let !_ = DT.trace ("IMMEDIATE-reg-offset3"++(show x)) () in
    let Just xi = Mp.lookup x sEnvI in A.LdF A.regZr (A.C $ xi + i)
  A.StF x  y (A.C i)| Mp.member y sEnvI -> 
    -- let !_ = DT.trace ("IMMEDIATE-reg-offset4"++(show y)) () in
    let Just yi = Mp.lookup y sEnvI in A.StF x A.regZr (A.C $ yi + i)
  -- immediate branch --
  A.IfEq x (A.V y) e1 e2 | Mp.member y sEnvI -> 
    let Just yi = Mp.lookup y sEnvI in 
    if -16 <= yi && yi <= 15
    then A.IfEq x (A.C yi) (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
    else A.IfEq x (A.V y)  (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
  A.IfEq x (A.V y) e1 e2 | Mp.member x sEnvI -> 
    let Just xi = Mp.lookup x sEnvI in 
    if -16 <= xi && xi <= 15
    then A.IfEq y (A.C xi) (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
    else A.IfEq y (A.V x)  (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
  A.IfLe x (A.V y) e1 e2 | Mp.member y sEnvI -> 
    let Just yi = Mp.lookup y sEnvI in 
    if -16 <= yi && yi <= 15
    then A.IfLe x (A.C yi) (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
    else A.IfLe x (A.V y)  (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
  A.IfLe x (A.V y) e1 e2 | Mp.member x sEnvI ->          -- IfGeになる
    let Just xi = Mp.lookup x sEnvI in 
    if -16 <= xi && xi <= 15
    then A.IfGe y (A.C xi) (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
    else A.IfLe x (A.V y)  (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
  A.IfEq x y e1 e2         -> A.IfEq x y (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
  A.IfLe x y e1 e2         -> A.IfLe x y (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)  
  -- float constant reg
  A.IfFEq x y e1 e2      | memFReg x ->
    gExp sEnvI sEnvF $ A.IfFEq (findFReg x) y e1 e2
  A.IfFEq x y e1 e2      | memFReg y ->
    gExp sEnvI sEnvF $ A.IfFEq x (findFReg y) e1 e2    
  A.IfFLe x y e1 e2      | memFReg x ->
    gExp sEnvI sEnvF $ A.IfFLe (findFReg x) y e1 e2    
  A.IfFLe x y e1 e2      | memFReg y ->
    gExp sEnvI sEnvF $ A.IfFLe x (findFReg y) e1 e2        
  A.IfFEq x y e1 e2        -> A.IfFEq x y (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
  A.IfFLe x y e1 e2        -> A.IfFLe x y (gE sEnvI sEnvF e1) (gE sEnvI sEnvF e2)
  A.FNeg x      | memFReg x -> A.FNeg (findFReg x)
  A.Fabs x      | memFReg x -> A.Fabs (findFReg x)  
  A.Sqrt x      | memFReg x -> A.Sqrt (findFReg x)
  A.FAdd x y    | memFReg x -> A.FAdd (findFReg x) y
  A.FAdd x y    | memFReg y -> A.FAdd x (findFReg y)
  A.FSub x y    | memFReg x -> A.FSub (findFReg x) y
  A.FSub x y    | memFReg y -> A.FSub x (findFReg y)
  A.FMul x y    | memFReg x -> A.FMul (findFReg x) y
  A.FMul x y    | memFReg y -> A.FMul x (findFReg y)
  A.FDiv x y    | memFReg x -> A.FDiv (findFReg x) y
  A.FDiv x y    | memFReg y -> A.FDiv x (findFReg y)
  _                        -> exp
 where memFReg  x = case Mp.lookup x sEnvF of
         Just (-1.0)    -> True
         Just (0.0)     -> True
         Just (1.0)     -> True
         Just (0.01)    -> True
         Just (-0.2)    -> True
         Just (-0.1)    -> True
         _              -> False
       findFReg x = case Mp.lookup x sEnvF of
         Just (-1.0)    -> A.regMiOneF
         Just (0.0)     -> A.regZrF
         Just (1.0)     -> A.regOneF
         Just (0.01)    -> A.regIKUTA1
         Just (-0.2)    -> A.regIKUTA2
         Just (-0.1)    -> A.regIKUTA3
         _              -> error ""
         