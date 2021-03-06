module Liveness where

import qualified Type as T
import qualified IdMod as I
import qualified Asm as As
import Block

import Data.List(nub, (\\))
import qualified Data.Set as St
import qualified Data.Map as Mp
import Control.Monad.State

type LiveMonad = State (Mp.Map I.Id (Block, Bool))

liveMain :: [Fundef] -> [Fundef]
liveMain fundefs = map liveAnalysisF fundefs

liveAnalysisF :: Fundef -> Fundef
liveAnalysisF f@Fundef{{-fId = f, fArgs = is, fFargs = fs, fRet = retT,-}
                       fBlocks = bmap, {-fHead = first,-} fTails = tails
                      {-fDefRegs = _, fcalls = _-} } =  
  f {fBlocks = bmap'}
  where bmap'       = Mp.map (\(e, _) -> e) 
                      $ execState (mapM_ liveAnalysisB tails) 
                      $ Mp.map (\e -> (e, False)) bmap

liveAnalysisB :: I.Id -> LiveMonad ()
liveAnalysisB bid =
  do blo@Block{{- bId -} bStmts = ss,
               bPreds = preds, bSuccs = succs
               {-bLiveInI_F , bLiveOutI_F -}} <- getBlock bid
     livesI <- (nub.concat) `fmap` mapM (\i -> bLiveInI `fmap` getBlock i
                                        ) succs -- このblock直後の生存変数を得る
     livesF <- (nub.concat) `fmap` mapM (\i -> bLiveInF `fmap` getBlock i
                                        ) succs -- このblock直後の生存変数を得る
     let (ss', (livesI', livesF')) = liveAnalysisSS ss (livesI, livesF)
     putBloChe bid (blo {bStmts = ss', bLiveInI = livesI', bLiveOutI = livesI, bLiveInF = livesF', bLiveOutF = livesF}) True
     case length preds of
       0        -> return ()
       1        -> do check <- checkWait (head preds)
                      (if check -- 分岐のもう一つの生存解析待ち
                       then liveAnalysisB (head preds)
                       else return ())
       2        -> do mapM_ liveAnalysisB preds

checkWait :: I.Id -> LiveMonad Bool
checkWait bid = 
  do Block{bSuccs = succs} <- getBlock bid
     and `fmap` mapM getCheck succs
                      
liveAnalysisSS :: [Stmt] -> ([I.Id], [I.Id]) -> ([Stmt], ([I.Id], [I.Id]))
liveAnalysisSS ss livesI_F = 
  foldl (\(ss', lsI_F) s -> 
          let (s', lsI_F') = liveAnalysisS s lsI_F in (s':ss', lsI_F')
        ) ([], livesI_F) (reverse ss)

-- liveoutを渡してliveinを得る --
liveAnalysisS :: Stmt -> ([I.Id], [I.Id]) -> (Stmt, ([I.Id], [I.Id]))
liveAnalysisS s@Stmt{sInst = exp {- sLiveIn = _, sLiveOut = _-}} (livesI, livesF) =
  (s', (livesI', livesF'))
  where (defsI, usesI, defsF, usesF) = getDefsUses exp
        livesI'                      = nub ((livesI \\ defsI) ++ usesI)
        livesF'                      = nub ((livesF \\ defsF) ++ usesF)
        s'                           = s {sLiveInI = livesI', sLiveOutI = livesI,
                                          sLiveInF = livesF', sLiveOutF = livesF}
      
-- defs,usesを集める --
getDefsUses :: Exp -> ([I.Id], [I.Id], [I.Id], [I.Id])
getDefsUses exp =
  case exp of
    Nop              -> ([], [], [], [])
    Set  (a,t) i     -> ([a],[], [],[])
    SetF (a,t) f     -> ([],[], [a],[])
    SetL (a,t) l     -> error (show __FILE__ ++ show __LINE__)
    Mov (a,t) x      -> ([a],[x], [],[])
    Neg (a,t) x      -> ([a],[x], [],[])
    Add (a,t) x y'   -> ([a],x:(ii y'), [],[])
    Sub (a,t) x y'   -> ([a],x:(ii y'), [],[])
    SLL (a,t) x i    -> ([a],[x], [],[])
    SRA (a,t) x i    -> ([a],[x], [],[])
    Ld  (a,t) x y'   -> ([a],x:(ii y'), [],[])
    St  x y z'       -> ([],x:y:(ii z'), [],[])
    FMov (a,t) x     -> ([],[], [a],[x])
    FNeg (a,t) x     -> ([],[], [a],[x])
    Fabs (a,t) x     -> ([],[], [a],[x])
    Sqrt (a,t) x     -> ([],[], [a],[x])
    FAdd (a,t) x y   -> ([],[], [a],[x,y])
    FSub (a,t) x y   -> ([],[], [a],[x,y])
    FMul (a,t) x y   -> ([],[], [a],[x,y])
    FDiv (a,t) x y   -> ([],[], [a],[x,y])
    LdF  (a,t) x y'  -> ([],x:(ii y'), [a],[])
    StF  x y z'      -> ([],y:(ii z'), [],[x])
    IfEq  x y' b1 b2 -> ([],x:(ii y'), [],[])
    IfLe  x y' b1 b2 -> ([],x:(ii y'), [],[])
    IfGe  x y' b1 b2 -> ([],x:(ii y'), [],[])
    IfFEq  x y b1 b2 -> ([],[], [], [x,y])
    IfFLe  x y b1 b2 -> ([],[], [], [x,y])
    CallCls (a,t) x ys zs  -> error (show __FILE__ ++ show __LINE__)
    CallDir (a,T.Unit) l ys zs  -> ([],ys, [],zs)
    CallDir (a,T.Float) l ys zs -> ([],ys, [a],zs)
    CallDir (a,_) l ys zs       -> ([a],ys, [],zs)
    Save    _ _      -> error (show __FILE__ ++ show __LINE__)
    Restore _ _      -> error (show __FILE__ ++ show __LINE__)
    
ii :: As.IdOrIm -> [I.Id]
ii (As.V x) = [x]
ii (As.C i) = []


-- state monad周りの汎用関数 --
getBlock :: I.Id -> LiveMonad Block
getBlock id = do (blo, che) <- gets (\map -> (Mp.!) map id); return blo
                 
getCheck :: I.Id -> LiveMonad Bool
getCheck id = do (blo, che) <- gets (\map -> (Mp.!) map id); return che
                 
putBloChe :: I.Id -> Block -> Bool -> LiveMonad ()                
putBloChe id blo che = modify (\bmap -> Mp.insert id (blo, che) bmap)
