module RegAllocB where

import qualified Type as T
import qualified IdMod as I
import qualified Asm as As
import Block

import Data.List (nub)
import qualified Data.Map as Mp

{-
だいたいdfsでレジスタ割り当て。????
先行するブロックすべてが割り当てられていない場合は待つ。(Livenessの時と似た感じ)????
先行ブロックの割り当て情報のインターセクトから後続の割り当てを考える。?????
==>>
Stateとして欲しい情報は???
各ブロックのレジスタ割り当て情報, 自己再帰チェック, 他の関数の使うレジスタ???

とりあえず関数の引数は全てr2-, f0- から置く感じ。
-}

allocFs :: [Fundef] -> [Fundef]
allocFs fundefs = map snd $ Mp.assocs mapFun
  where mapFun = foldl (\mapf fundef -> let fundef' = allocF mapf fundef
                                        in Mp.insert (fId fundef') fundef'
                       ) Mp.empty fundefs

allocF :: Mp.Map I.Id Fundef -> Fundef -> Fundef
allocF mapf f@Fundef{fId = fname, fArgs = is, fFargs = fs, fRet = retT,
                     fBlocks = bmap, {-fHead = first, fTails = tails-}
                    {-fDefRegs = _,fcalls = _,-} fRegMapI = mapI, fRegMapF = mapF} 
  = f{fBlocks = bmap', fDefRegs = uses}
  where bmap' = Mp.map (allocB mapf mapI mapF) bmap
        uses  = concat $ Mp.map gatherUseReg bmap'
            
allocB :: Mp.Map I.Id Fundef -> Mp.Map I.Id Int -> Mp.Map I.Id Int -> Block -> Block
allocB mapf mapI mapF blo@Block{bStmts = ss} =
  concatMap (allocS mapf mapI mapF) ss

-- このブロック内でSave, Restoreを完結させる。
-- とりあえず、関数呼び出しの前後でガンガンsave, restoreを詰める。(後で取り除ける)
-- いわゆるregEnvは必要ない??
allocS :: Mp.Map I.Id Fundef -> Mp.Map I.Id Int -> Mp.Map I.Id Int -> Stmt -> [Stmt]
allocS mapf mapI mapF s@Stmt{sInst = exp
                            , sLiveInI = inI, sLiveOutI = outI
                            , sLiveInF = inF, sLiveOutF = outF} = undefined
  let exps =
       case exp of
         Nop                         -> [Nop]
         Set       (x,t) i           -> [Set (myFind mapI mapF x, t) i]
         SetF      (x,t) f           -> undefined
         SetL      (x,t) (I.Label l) -> error (show __FILE__ ++ show __LINE__)
         Mov       (x,t) y           -> undefined
         Neg       (x,t) y           -> undefined
         Add       (x,t) y idOrIm    -> [Add (myFind mapI mapF x, t) (myFind mapI mapF x) (myFind' mapI mapF idOrIm)]
         Sub       (x,t) y idOrIm    -> undefined
         SLL       (x,t) y i         -> undefined
         SRA       (x,t) y i         -> undefined
         Ld        (x,t) y idOrIm    -> undefined
         St        x y idOrIm        -> undefined
         FMov      (x,t) y           -> undefined
         FNeg      (x,t) y           -> undefined
         Fabs      (x,t) y           -> undefined
         Sqrt      (x,t) y           -> undefined
         FAdd      (x,t) y z         -> undefined
         FSub      (x,t) y z         -> undefined
         FMul      (x,t) y z         -> undefined
         FDiv      (x,t) y z         -> undefined
         LdF       (x,t) y idOrIm           -> undefined
         StF       x y idOrIm               -> undefined
         IfEq      x idOrIm b1 b2           -> undefined
         IfLe      x idOrIm b1 b2           -> undefined
         IfGe      x idOrIm b1 b2           -> undefined
         IfFEq     x y b1 b2                -> undefined
         IfFLe     x y b1 b2                -> undefined
         CallCls   (x,t) f    is fs         -> error (show __FILE__ ++ show __LINE__)
         CallDir   (x,t) (I.Label f) is fs  -> undefined
           where usesF = searchUseRegF mapf f
         Save      x var                    -> error (show __FILE__ ++ show __LINE__)
         Restore   (x, t) var               -> error (show __FILE__ ++ show __LINE__)


-- その関数がどのレジスタを使用しているかを見る。
searchUseRegF :: Mp.Map I.Id Fundef -> I.Id -> [I.Id]
searchUseRegF mapf fname | Mp.member fname mapf = 
         
gatherUseRegB :: Block -> [I.Id]
gatherUseRegB b = nub . concatMap gatherUseRegS $ bStmts b

gatherUseRegS :: Stmt -> [I.Id]
gatherUseRegS s = 
  case sInst s of
    _   -> undefined
