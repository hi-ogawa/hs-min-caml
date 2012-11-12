module Simm where

import qualified IdMod as I
import qualified Asm as A

import qualified Data.Map as Mp
import qualified Debug.Trace as DT

import Data.Bits(shift)

type SimmEnv = Mp.Map I.Id Int

simmMain :: A.Prog -> A.Prog
simmMain (exp, fundefs) = 
  let !_ = DT.trace ("simm...") () in  
  (exp', fundefs')
  where exp'     = gE Mp.empty exp
        fundefs' = map gFunc fundefs
        
gFunc :: A.Fundef -> A.Fundef
gFunc A.Fundef{ A.name = l, A.args = ys, A.fargs = zs, A.body = e, A.ret  = t } = 
  A.Fundef{ A.name = l, A.args = ys, A.fargs = zs, A.body = e', A.ret  = t }
  where e' = gE Mp.empty e

gE :: SimmEnv -> A.T -> A.T
gE sEnv e = case e of
  A.Ans exp                 -> A.Ans (gExp sEnv exp)
  A.Let (x, t) (A.Set i) e' | (-4096 <= i) && (i < 4096) && (not $ A.isReg x)->
    if elem x (A.freeVar e'')
    then A.Let (x, t) (A.Set i) e''
    else e''
    where e'' = gE (Mp.insert x i sEnv) e' 
  A.Let xt (A.SLL y i) e'   -> 
    case Mp.lookup y sEnv of
      Just yi -> --let !_ = DT.trace ("simm: shiftL "++(show yi)++"<<"++(show i)) () in
        gE sEnv $ A.Let xt (A.Set $ shift yi i) e'
      Nothing -> A.Let xt (A.SLL y i) (gE sEnv e')
  A.Let xt (A.SRA y i) e'   -> 
    case Mp.lookup y sEnv of
      Just yi -> --let !_ = DT.trace ("simm: shiftR "++(show yi)++"<<"++(show i)) () in
        gE sEnv $ A.Let xt (A.Set $ shift yi (-i)) e'
      Nothing -> A.Let xt (A.SRA y i) (gE sEnv e')      
  A.Let xt     exp       e' -> A.Let xt (gExp sEnv exp) (gE sEnv e')
  
gExp :: SimmEnv -> A.Exp -> A.Exp 
gExp sEnv exp = case exp of
  A.Add x (A.V y)   | Mp.member y sEnv -> 
--    let !_ = DT.trace ("immidiating:"++(show y)) () in
    let Just yi = Mp.lookup y sEnv in A.Add x (A.C yi)
  A.Add x (A.V y)   | Mp.member x sEnv -> 
--    let !_ = DT.trace ("immidiating:"++(show x)) () in
    let Just xi = Mp.lookup x sEnv in A.Add y (A.C xi)
  A.Sub x (A.V y)   | Mp.member y sEnv -> 
--    let !_ = DT.trace ("immidiating:"++(show y)) () in    
    let Just yi = Mp.lookup y sEnv in A.Sub x (A.C yi)
  A.Sub x (A.V y)   | Mp.member x sEnv -> 
--    let !_ = DT.trace ("immidiating:"++(show x)) () in    
    let Just xi = Mp.lookup x sEnv in A.Sub y (A.C xi)
  A.Ld  x (A.V y)   | Mp.member y sEnv -> 
--    let !_ = DT.trace ("immidiating:"++(show y)) () in    
    let Just yi = Mp.lookup y sEnv in A.Ld  x (A.C yi)
  A.St  x  y (A.V z)| Mp.member z sEnv -> 
--    let !_ = DT.trace ("immidiating:"++(show z)) () in    
    let Just zi = Mp.lookup z sEnv in A.St  x y (A.C zi)
  A.LdF x (A.V y)   | Mp.member y sEnv -> 
--    let !_ = DT.trace ("immidiating:"++(show y)) () in    
    let Just yi = Mp.lookup y sEnv in A.LdF x (A.C yi)
  A.StF x  y (A.V z)| Mp.member z sEnv -> 
--    let !_ = DT.trace ("immidiating:"++(show z)) () in    
    let Just zi = Mp.lookup z sEnv in A.StF x y (A.C zi)
  A.IfEq x y e1 e2          -> A.IfEq x y (gE sEnv e1) (gE sEnv e2)
  A.IfLe x y e1 e2          -> A.IfLe x y (gE sEnv e1) (gE sEnv e2)
  A.IfFEq x y e1 e2         -> A.IfFEq x y (gE sEnv e1) (gE sEnv e2)
  A.IfFLe x y e1 e2         -> A.IfFLe x y (gE sEnv e1) (gE sEnv e2)
  _                         -> exp

