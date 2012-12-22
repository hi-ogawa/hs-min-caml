module RegAllocB where

import qualified Type as T
import qualified IdMod as I
import qualified Asm as As
import Block

import Data.List (nub, delete)
import qualified Data.Map as Mp
import qualified Debug.Trace as DT

{-
だいたいdfsでレジスタ割り当て。????
先行するブロックすべてが割り当てられていない場合は待つ。(Livenessの時と似た感じ)????
先行ブロックの割り当て情報のインターセクトから後続の割り当てを考える。?????
==>>
Stateとして欲しい情報は???
各ブロックのレジスタ割り当て情報, 自己再帰チェック, 他の関数の使うレジスタ??? <= 全部嘘

とりあえず関数の引数は全てr2-, f0- から置く感じ。
-}

extFuns :: Mp.Map I.Id Fundef
extFuns = Mp.fromList [("min_caml_print_char", Fundef{fUseRegs = (["$r2"], [])})
                      ,("min_caml_input_char", Fundef{fUseRegs = (["$r2"], [])})]

allocMain :: [Fundef] -> [Fundef]
allocMain fundefs = map snd $ Mp.assocs mapFun
  where mapFun = foldl (\mapf fundef -> let fundef' = allocF mapf fundef
                                        in Mp.insert (fId fundef') fundef' mapf
                       ) Mp.empty fundefs

allocF :: Mp.Map I.Id Fundef -> Fundef -> Fundef
allocF mapf f@Fundef{fId = fname, fArgs = is, fFargs = fs, fRet = retT,
                     fBlocks = bmap, {-fHead = first, fTails = tails-}
                    {-fUseRegs = _,-} fCalls = fcs, fRegMapI = mapI, fRegMapF = mapF} 
  = f{fBlocks = bmap', fUseRegs = (nub $ useI ++ useI', nub $ useF ++ useF')}
  where bmap' = Mp.map (allocB mapf mapI mapF) bmap
        (useI, useF) = gatherUseRegF f{fBlocks = bmap'} -- 自分が使ったレジスタ
        (useI',useF')= (\(l1, l2) -> (nub $ concat l1, nub $ concat l2)) . unzip
                       $ map (fUseRegs . (Mp.!) (Mp.union mapf extFuns)) fcs -- fcsは必ずmapfにある(外部関数も追加)
        
            
allocB :: Mp.Map I.Id Fundef -> Mp.Map I.Id Int -> Mp.Map I.Id Int -> Block -> Block
allocB mapf mapI mapF blo@Block{bStmts = ss} =
  blo{bStmts = ss'}
  where ss' = concatMap (allocS mapf mapI mapF) ss

-- このブロック内でSave, Restoreを完結させる。
-- とりあえず、関数呼び出しの前後でガンガンsave, restoreを詰める。(後で取り除ける)
-- いわゆるregEnvは必要ない??
allocS :: Mp.Map I.Id Fundef -> Mp.Map I.Id Int -> Mp.Map I.Id Int -> Stmt -> [Stmt]
allocS mapf mapI mapF s@Stmt{sInst = exp
                            , sLiveInI = inI, sLiveOutI = outI
                            , sLiveInF = inF, sLiveOutF = outF} =
  map (\e -> s{sInst = e}) exps
  where myFindI x | As.isReg x = x
                  | otherwise  = (\i -> "$r" ++ (show (i+2))) $ (Mp.!) mapI ({-DT.trace ("\nDEBUG"++show x++show mapI++"DEBUG\n")-} x)
        myFindF x | As.isReg x = x
                  | otherwise  = (\i -> "$f" ++ (show i)) $ (Mp.!) mapF x
        myFindI' (As.V x) = As.V (myFindI x)
        myFindI' (As.C i) = As.C i      
        exps = case exp of
         Nop                         -> [Nop]
         Set       (x,t) i           -> [Set (myFindI x, t) i]
         SetF      (x,t) f           -> [SetF (myFindF x, t) f]
         SetL      (x,t) (I.Label l) -> error (show __FILE__ ++ show __LINE__)
         Mov       (x,t) y           -> [Mov (myFindI x, t) (myFindI y)]
         Neg       (x,t) y           -> [Neg (myFindI x, t) (myFindI y)]
         Add       (x,t) y idOrIm    -> [Add (myFindI x, t) (myFindI y) (myFindI' idOrIm)]
         Sub       (x,t) y idOrIm    -> [Sub (myFindI x, t) (myFindI y) (myFindI' idOrIm)]
         SLL       (x,t) y i         -> [SLL (myFindI x, t) (myFindI y) i]
         SRA       (x,t) y i         -> [SRA (myFindI x, t) (myFindI y) i]
         Ld        (x,t) y idOrIm    -> [Ld  (myFindI x, t) (myFindI y) (myFindI' idOrIm)]
         St        x y idOrIm        -> [St  (myFindI x) (myFindI y) (myFindI' idOrIm)]
         FMov      (x,t) y           -> [FMov (myFindF x, t) (myFindF y)]
         FNeg      (x,t) y           -> [FNeg (myFindF x, t) (myFindF y)]
         Fabs      (x,t) y           -> [Fabs (myFindF x, t) (myFindF y)]
         Sqrt      (x,t) y           -> [Sqrt (myFindF x, t) (myFindF y)]
         FAdd      (x,t) y z         -> [FAdd (myFindF x, t) (myFindF y) (myFindF z)]
         FSub      (x,t) y z         -> [FSub (myFindF x, t) (myFindF y) (myFindF z)]
         FMul      (x,t) y z         -> [FMul (myFindF x, t) (myFindF y) (myFindF z)]
         FDiv      (x,t) y z         -> [FDiv (myFindF x, t) (myFindF y) (myFindF z)]
         LdF       (x,t) y idOrIm           -> [LdF (myFindF x, t) (myFindI y) (myFindI' idOrIm)]
         StF       x y idOrIm               -> [StF (myFindF x) (myFindI y) (myFindI' idOrIm)]
         IfEq      x idOrIm b1 b2           -> [IfEq (myFindI x) (myFindI' idOrIm) b1 b2]
         IfLe      x idOrIm b1 b2           -> [IfLe (myFindI x) (myFindI' idOrIm) b1 b2]
         IfGe      x idOrIm b1 b2           -> [IfGe (myFindI x) (myFindI' idOrIm) b1 b2]
         IfFEq     x y b1 b2                -> [IfFEq (myFindF x) (myFindF y) b1 b2]
         IfFLe     x y b1 b2                -> [IfFLe (myFindF x) (myFindF y) b1 b2]
         CallCls   (x,t) f    is fs         -> error (show __FILE__ ++ show __LINE__)
         CallDir   (x,t) (I.Label f) is fs  -> saveEsI ++ saveEsF
                                               ++ [CallDir (retX,t) (I.Label f) argsI argsF]    -- return値のすり替え、argsのシャッフルはEMITで行う
                                               ++ restEsI ++ restEsF
           where (useI, useF) = searchUseRegF (Mp.union mapf extFuns) f -- ($r2, $f0 などはこの中に入ってるはず)(外部関数もsearch)
                 useI' = useI ++ (zipWith (\_ i -> "$r" ++ show i) is [2..])    -- 引数シャッフルで潰される奴をいれとく
                 useF' = useF ++ (zipWith (\_ i -> "$f" ++ show i) fs [0..])    -- "
                 saveI = filter (\v -> elem (myFindI v) useI') (delete x outI)    -- 退避すべき変数
                 saveF = filter (\v -> elem (myFindF v) useF') (delete x outF)    -- 退避すべき変数
                 saveEsI = map (\v -> Save (myFindI v) v) saveI
                 saveEsF = map (\v -> Save (myFindF v) v) saveF
                 restEsI = map (\v -> Restore ((myFindI v), T.Int) v) saveI
                 restEsF = map (\v -> Restore ((myFindF v), T.Float) v) saveF
                 argsI  = map myFindI is
                 argsF  = map myFindF fs
                 retX = case t of
                          T.Unit        -> "$g0"
                          T.Float       -> myFindF x
                          _             -> myFindI x
         Save      x var                    -> error (show __FILE__ ++ show __LINE__)
         Restore   (x, t) var               -> error (show __FILE__ ++ show __LINE__)

-- その関数呼び出し時に退避するレジスタを求める
searchUseRegF :: Mp.Map I.Id Fundef -> I.Id -> ([I.Id], [I.Id])
searchUseRegF mapf fname | Mp.notMember fname mapf = (As.iRegs, As.fRegs)       -- 関数の情報がなければ全部退避させる(recursive)
                         | otherwise               = (useI, useF)
  where Fundef{fUseRegs = (useI, useF)} = (Mp.!) mapf fname
    

gatherUseRegF :: Fundef -> ([I.Id], [I.Id])
gatherUseRegF Fundef{fBlocks = bmap} = (\(ls1, ls2) -> (nub $ concat ls1, nub $ concat ls2)) . unzip . map snd . Mp.assocs 
                                       $ Mp.map gatherUseRegB bmap

    
gatherUseRegB :: Block -> ([I.Id], [I.Id])
gatherUseRegB b = (\(l1, l2) -> (nub $ concat l1, nub $ concat l2)) . unzip . map gatherUseRegS $ bStmts b

gatherUseRegS :: Stmt -> ([I.Id], [I.Id])
gatherUseRegS s =
  case sInst s of
     Nop                         -> ([], [])
     Set       (x,t) i           -> ([x], [])
     SetF      (x,t) f           -> ([], [x])
     SetL      (x,t) (I.Label l) -> error (show __FILE__ ++ show __LINE__)
     Mov       (x,t) y           -> ([x,y], [])
     Neg       (x,t) y           -> ([x,y], [])
     Add       (x,t) y ii        -> ([x,y]++(iiToReg ii) , [])
     Sub       (x,t) y ii        -> ([x,y]++(iiToReg ii) , [])
     SLL       (x,t) y i         -> ([x,y],[])
     SRA       (x,t) y i         -> ([x,y],[])
     Ld        (x,t) y ii        -> ([x,y]++(iiToReg ii),[])
     St        x y ii            -> ([x,y]++(iiToReg ii),[])
     FMov      (x,t) y           -> ([], [x,y])
     FNeg      (x,t) y           -> ([], [x,y])
     Fabs      (x,t) y           -> ([], [x,y])
     Sqrt      (x,t) y           -> ([], [x,y])
     FAdd      (x,t) y z         -> ([], [x,y,z])
     FSub      (x,t) y z         -> ([], [x,y,z])
     FMul      (x,t) y z         -> ([], [x,y,z])
     FDiv      (x,t) y z         -> ([], [x,y,z])
     LdF       (x,t) y ii               -> ([y]++(iiToReg ii), [x])
     StF       x y ii                   -> ([y]++(iiToReg ii), [x])
     IfEq      x ii b1 b2               -> ([x]++(iiToReg ii), [])
     IfLe      x ii b1 b2               -> ([x]++(iiToReg ii), [])
     IfGe      x ii b1 b2               -> ([x]++(iiToReg ii), [])
     IfFEq     x y b1 b2                -> ([], [x,y])
     IfFLe     x y b1 b2                -> ([], [x,y])
     CallCls   (x,t) f    is fs         -> error (show __FILE__ ++ show __LINE__)
     CallDir   (x,t)  (I.Label f) is fs  -> 
       case t of
         T.Unit         -> (useI, useF)
         T.Float        -> (useI, "$f0":x:useF)
         _              -> ("$r2":x:useI, useF)
       where useI = is ++ (zipWith (\_ i -> "$r" ++ show i) is [2..])  -- shuffleで潰れる分
             useF = fs ++ (zipWith (\_ i -> "$f" ++ show i) fs [0..])
     Save      x var                    -> ([], [])
     Restore   (x, t) var               -> ([], [])
  where iiToReg (As.V r) = [r]
        iiToReg (As.C i) = []