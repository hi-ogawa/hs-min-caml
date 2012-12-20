module Block where

import qualified Type as T
import qualified IdMod as I
import qualified Asm as As

import qualified Data.Map as Mp
import Control.Monad.State

-- blockを集める(runしたあとMapにまとめる)
type MyMonadSS = StateT [(I.Id, Block)] I.IdState

data Fundef = Fundef{fId:: I.Id, fArgs :: [I.Id], fFargs :: [I.Id], fRet::T.T
                    ,fBlocks :: Mp.Map I.Id Block, fHead :: I.Id, fTails :: [I.Id]
                    ,fUseRegs:: ([I.Id], [I.Id]), fCalls :: [I.Id]
                    ,fRegMapI :: Mp.Map I.Id Int, fRegMapF :: Mp.Map I.Id Int}
-- <<関数>>
-- 関数のラベル, 整数引数のID, 浮動小数引数のID, 返り値の型
-- 関数内のBlock群, 関数で始めに呼ばれるBlock, 関数の末尾のBlock群
-- 関数内で使用されるレジスタ群, 関数内で呼び出す関数群, (仮のレジスタ変数を作り、変数からその数値へのMap(Int, Float))

data Block  = Block{bId :: I.Id, bStmts :: [Stmt],
                    bPreds :: [I.Id], bSuccs :: [I.Id],
                    bLiveInI :: [I.Id], bLiveOutI :: [I.Id],
                    bLiveInF :: [I.Id], bLiveOutF :: [I.Id]}

-- <<基本ブロック>>
-- BlockのID, このBlock内で発行するStmt群
-- このBlockに入るBlock群, このBlockから続くBlock群 (高々2つ??)
-- このBlockの実行直前の生存変数群、このBlockの実行直後の生存変数群(Int, Float)

data Stmt   = Stmt {sInst :: Exp
                   , sLiveInI :: [I.Id], sLiveOutI :: [I.Id]
                   , sLiveInF :: [I.Id], sLiveOutF :: [I.Id]}              
-- <<基本ブロック>>
-- 命令種, このStmtの直前の生存変数群, このStmtの直後の生存変数群(Int, Float)

data Exp = Nop
       | Set       (I.Id, T.T) Int
       | SetF      (I.Id, T.T) Float
       | SetL      (I.Id, T.T) I.Label  -- NOT ISSUED
       | Mov       (I.Id, T.T) I.Id
       | Neg       (I.Id, T.T) I.Id
       | Add       (I.Id, T.T) I.Id As.IdOrIm
       | Sub       (I.Id, T.T) I.Id As.IdOrIm
       | SLL       (I.Id, T.T) I.Id Int
       | SRA       (I.Id, T.T) I.Id Int
       | Ld        (I.Id, T.T) I.Id As.IdOrIm
       | St        I.Id I.Id As.IdOrIm
       | FMov      (I.Id, T.T) I.Id
       | FNeg      (I.Id, T.T) I.Id
       | Fabs      (I.Id, T.T) I.Id
       | Sqrt      (I.Id, T.T) I.Id
       | FAdd      (I.Id, T.T) I.Id I.Id
       | FSub      (I.Id, T.T) I.Id I.Id
       | FMul      (I.Id, T.T) I.Id I.Id
       | FDiv      (I.Id, T.T) I.Id I.Id
       | LdF       (I.Id, T.T) I.Id As.IdOrIm
       | StF       I.Id I.Id As.IdOrIm
       | IfEq      I.Id As.IdOrIm I.Id I.Id  -- then blockID else blockID
       | IfLe      I.Id As.IdOrIm I.Id I.Id
       | IfGe      I.Id As.IdOrIm I.Id I.Id
       | IfFEq     I.Id I.Id I.Id I.Id
       | IfFLe     I.Id I.Id I.Id I.Id
       | CallCls   (I.Id, T.T) I.Id    [I.Id] [I.Id]        -- NOT ISSUED
       | CallDir   (I.Id, T.T) I.Label [I.Id] [I.Id]
       | Save      I.Id I.Id                                -- NOT ISSUED
       | Restore   (I.Id, T.T) I.Id                         -- NOT ISSUED

-- MAIN --
blockMain :: As.Prog -> I.Counter-> ([Fundef], I.Counter)
blockMain (main, fundefs) c = 
  (fundefs', c')
  where main' = As.Fundef{As.name = I.Label "min_caml_main", As.args = [], As.fargs = [],
                          As.body = main,           As.ret  = T.Unit}
        (fundefs', c') = runState (evalStateT (mapM blockFun (main' : fundefs)) []) c

-- Asm関数 を Block関数に変換
blockFun :: As.Fundef -> MyMonadSS Fundef
blockFun As.Fundef{As.name = la@(I.Label x), As.args = is, As.fargs = fs,
                   As.body = bo, As.ret  = retT} = 
  do first      <- lift $ I.genNewId x
     put []      -- 関数内のblockを集めるために初期化
     (ss, succs)<- asmToBlocks dest [first] bo
     insertBlock first ss [] succs
     bs <- get        -- 関数内のblockを集める     
     return $ Fundef{fId = x, fArgs = is, fFargs = fs, fRet = retT,
                     fBlocks = Mp.fromList bs, fHead = first, fTails = getTails (Mp.fromList bs) first,
                     fUseRegs = ([], []), fCalls = [], fRegMapI = Mp.empty, fRegMapF = Mp.empty}
  where dest = (case retT of
                   T.Unit       -> ("$g0", T.Int)
                   T.Float      -> (As.fRegs !! 0, T.Float)
                   _            -> (As.iRegs !! 0, T.Int))
               
getTails :: Mp.Map I.Id Block -> I.Id -> [I.Id]
getTails bmap now = if null succs
                    then [now]
                    else concatMap (getTails bmap) succs
  where succs = bSuccs (bmap Mp.! now)

-- Let列 を Blockの集合へ (Block自体はStateで積み上げる。eにおける先頭ブロックの後続のブロック郡のIDを返す)
asmToBlocks :: (I.Id, T.T) -> [I.Id] -> As.T -> MyMonadSS ([Stmt], [I.Id])
asmToBlocks dest now e = case e of
  As.Ans exp            -> expToStmt dest now exp >>= (\(s, _, succs) -> return ([s], succs))
  As.Let (x, t) exp e'  -> do (s, divCheck, succs) <- expToStmt (x,t) now exp
                              (if divCheck
                               then do b1 <- lift $ I.genNewId "blockCont"
                                       (ss, succs') <- asmToBlocks dest [b1] e'
                                       insertBlock b1 ss succs succs'
                                       return ([s], succs)
                               else do (ss, succs') <- asmToBlocks dest now e'
                                       return (s:ss, succs'))
  
-- As.Exp を Stmtに変換 (また、blockが分割されるかどうかをBoolで返し。その後続のblockIdも返す)
expToStmt :: (I.Id, T.T) -> [I.Id] -> As.Exp -> MyMonadSS (Stmt, Bool, [I.Id])
expToStmt dest now exp = case exp of
  As.Nop                 -> return (stmten $ Nop,        False, [])
  As.Set   i             -> return (stmten $ Set dest i, False, [])
  As.SetF  f             -> return (stmten $ SetF dest f    , False, [])
  As.SetL  l             -> error (show __FILE__ ++ show __LINE__) --return (stmten $ SetL dest l    , False, [])
  As.Mov x               -> return (stmten $ Mov dest x      , False, [])
  As.Neg x               -> return (stmten $ Neg dest x      , False, [])
  As.Add x y'            -> return (stmten $ Add dest x y'   , False, [])
  As.Sub x y'            -> return (stmten $ Sub dest x y'   , False, [])
  As.SLL x i             -> return (stmten $ SLL dest x i    , False, [])
  As.SRA x i             -> return (stmten $ SRA dest x i    , False, [])
  As.Ld  x y'            -> return (stmten $ Ld  dest x y'   , False, [])
  As.St  x y z'          -> return (stmten $ St  x y z' , False, [])
  As.FMov x              -> return (stmten $ FMov dest x     , False, [])
  As.FNeg x              -> return (stmten $ FNeg dest x     , False, [])
  As.Fabs x              -> return (stmten $ Fabs dest x     , False, [])
  As.Sqrt x              -> return (stmten $ Sqrt dest x     , False, [])
  As.FAdd x y            -> return (stmten $ FAdd dest x y   , False, [])
  As.FSub x y            -> return (stmten $ FSub dest x y   , False, [])
  As.FMul x y            -> return (stmten $ FMul dest x y   , False, [])
  As.FDiv x y            -> return (stmten $ FDiv dest x y   , False, [])
  As.LdF  x y'           -> return (stmten $ LdF  dest x y'  , False, [])
  As.StF  x y z'         -> return (stmten $ StF  x y z', False, [])
  As.IfEq  x y' e1 e2    -> do (ss1, succs1) <- asmToBlocks dest now e1; b1 <- lift $ I.genNewId "blockIfEq1"
                               (ss2, succs2) <- asmToBlocks dest now e2; b2 <- lift $ I.genNewId "blockIfEq2"
                               insertBlock b1 ss1 now succs1; insertBlock b2 ss2 now succs2  
                               return (stmten $ IfEq x y' b1 b2, True, [b1, b2])
  As.IfLe  x y' e1 e2    -> do (ss1, succs1) <- asmToBlocks dest now e1; b1 <- lift $ I.genNewId "blockIfLe1"
                               (ss2, succs2) <- asmToBlocks dest now e2; b2 <- lift $ I.genNewId "blockIfLe2"
                               insertBlock b1 ss1 now succs1; insertBlock b2 ss2 now succs2  
                               return (stmten $ IfLe x y' b1 b2, True, [b1, b2])
  As.IfGe  x y' e1 e2    -> do (ss1, succs1) <- asmToBlocks dest now e1; b1 <- lift $ I.genNewId "blockIfGe1"
                               (ss2, succs2) <- asmToBlocks dest now e2; b2 <- lift $ I.genNewId "blockIfGe2"
                               insertBlock b1 ss1 now succs1; insertBlock b2 ss2 now succs2
                               return (stmten $ IfGe x y' b1 b2, True, [b1, b2])
  As.IfFEq  x y e1 e2    -> do (ss1, succs1) <- asmToBlocks dest now e1; b1 <- lift $ I.genNewId "blockIfFEq1"
                               (ss2, succs2) <- asmToBlocks dest now e2; b2 <- lift $ I.genNewId "blockIfFEq2"
                               insertBlock b1 ss1 now succs1; insertBlock b2 ss2 now succs2  
                               return (stmten $ IfFEq x y b1 b2, True, [b1, b2])
  As.IfFLe  x y e1 e2    -> do (ss1, succs1) <- asmToBlocks dest now e1; b1 <- lift $ I.genNewId "blockIfFEq1"
                               (ss2, succs2) <- asmToBlocks dest now e2; b2 <- lift $ I.genNewId "blockIfFEq2"
                               insertBlock b1 ss1 now succs1; insertBlock b2 ss2 now succs2
                               return (stmten $ IfFLe x y b1 b2, True, [b1, b2])
  As.CallCls x ys zs     -> error (show __FILE__ ++ show __LINE__)--return (stmten $ CallCls dest x ys zs, False, [])
  As.CallDir l ys zs     -> return (stmten $ CallDir dest l ys zs, False, [])
  As.Save    _ _         -> error (show __FILE__ ++ show __LINE__)
  As.Restore _           -> error (show __FILE__ ++ show __LINE__)
  
-- live関係は後で追加
insertBlock :: I.Id -> [Stmt] -> [I.Id] -> [I.Id] -> MyMonadSS ()
insertBlock b1 ss preds succs = modify ((b1, Block{bId = b1, bStmts = ss, bPreds = preds, bSuccs = succs
                                                  ,bLiveInI = [], bLiveOutI = [], bLiveInF = [], bLiveOutF = []}):)

-- live関係は後で追加
stmten :: Exp -> Stmt
stmten exp = Stmt{sInst = exp, sLiveInI = [], sLiveOutI = [], sLiveInF = [], sLiveOutF = []}


-------------------
-- show instance --
-------------------
instance Show Fundef where
  show Fundef{fId = fname, fArgs = is, fFargs = fs, fRet = retT,
              fBlocks = bmap, fHead = headBlock, fTails = lastBlocks,
              fUseRegs = (regsI, regsF), fCalls = calls, fRegMapI = regMapI, fRegMapF = regMapF}
    = "[FUNC_NAME]:"++ fname ++" (I_args):"++show is++" (F_args):"++show fs++" (RET_TYPE):"++show retT
      ++"\n<HEAD>"++ headBlock ++ " <TAILS>"++ show lastBlocks
      ++"\n<Use_RegsI>"++show regsI ++"<Use_RegsI>"++show regsF ++" <CALLS>"++ show calls 
      ++"\n<RegMapI>"++ show (Mp.assocs regMapI)++" <RegMapF>"++ show (Mp.assocs regMapF)
      ++"\n"++ (concatMap show bs)
   where bs = map snd $ Mp.assocs bmap
        
instance Show Block where
  show Block{bId = bname, bStmts = ss,
             bPreds = preds, bSuccs = succs,
             bLiveInI = insI, bLiveOutI = outsI,
             bLiveInF = insF, bLiveOutF = outsF}    
    = "   -- BLOCK_ID : "++ bname ++ " --"
      ++"\n   <PREDS>"++ show preds++" <SUCCS>"++ show succs
      ++"\n   <BINI>"++ show insI++" <BOUTI>"++ show outsI
      ++"\n   <BINF>"++ show insF++" <BOUTF>"++ show outsF
      ++"\n"++ (concatMap (\s -> "      "++show s) ss)
  
instance Show Stmt where
  show Stmt{sInst = exp, sLiveInI = insI, sLiveOutI = outsI, sLiveInF = insF, sLiveOutF = outsF} 
   = show exp 
     ++"\n\t\t\t\t\t\t<INI>: "++ show insI ++" <OUTI>: "++ show outsI
     ++" <INF>: "++ show insF ++" <OUTF>: "++ show outsF     
     ++"\n"
  
instance Show Exp where  
  show exp =
    case exp of
     Nop                                -> "Nop"
     Set       (x,t) i                  -> "Set: (" ++ x ++") "++ show i
     SetF      (x,t) f                  -> "SetF: ("++ x ++") "++ show f
     SetL      (x,t) (I.Label l)        -> "SetL: ("++ x ++") "++ l        -- NOT ISSUED
     Mov       (x,t) y                  -> "Mov: (" ++ x ++") "++ y
     Neg       (x,t) y                  -> "Neg: (" ++ x ++") "++ y
     Add       (x,t) y idOrIm           -> "Add: (" ++ x ++") "++ y ++" "++ show idOrIm
     Sub       (x,t) y idOrIm           -> "Sub: (" ++ x ++") "++ y ++" "++ show idOrIm
     SLL       (x,t) y i                -> "SLL: (" ++ x ++") "++ y ++" "++ show i
     SRA       (x,t) y i                -> "SRA: (" ++ x ++") "++ y ++" "++ show i
     Ld        (x,t) y idOrIm           -> "Ld: (" ++ x ++") "++ y ++" "++ show idOrIm
     St        x y idOrIm               -> "St: " ++ x ++" "++ y ++" "++ show idOrIm
     FMov      (x,t) y                  -> "FMov: (" ++ x ++") "++ y 
     FNeg      (x,t) y                  -> "FNeg: (" ++ x ++") "++ y
     Fabs      (x,t) y                  -> "Fabs: (" ++ x ++") "++ y
     Sqrt      (x,t) y                  -> "Sqrt: (" ++ x ++") "++ y
     FAdd      (x,t) y z                -> "FAdd: (" ++ x ++") "++ y ++" "++ z
     FSub      (x,t) y z                -> "FSub: (" ++ x ++") "++ y ++" "++ z
     FMul      (x,t) y z                -> "FMul: (" ++ x ++") "++ y ++" "++ z
     FDiv      (x,t) y z                -> "FDiv: (" ++ x ++") "++ y ++" "++ z
     LdF       (x,t) y idOrIm           -> "LdF: (" ++ x ++") "++ y ++" "++ show idOrIm
     StF       x y idOrIm               -> "StF: " ++ x ++" "++ y ++" "++ show idOrIm
     IfEq      x idOrIm b1 b2           -> "IfEq: "++ x ++" "++ show idOrIm ++" "++b1++" "++b2
     IfLe      x idOrIm b1 b2           -> "IfLe: "++ x ++" "++ show idOrIm ++" "++b1++" "++b2
     IfGe      x idOrIm b1 b2           -> "IfGe: "++ x ++" "++ show idOrIm ++" "++b1++" "++b2
     IfFEq     x y b1 b2                -> "IfFEq: "++ x ++" "++ y ++" "++b1++" "++b2
     IfFLe     x y b1 b2                -> "IfFLe: "++ x ++" "++ y ++" "++b1++" "++b2
     CallCls   (x,t) f    is fs         -> "CallCls: ("++ x ++") "++ f ++" "++show is++" "++show fs
     CallDir   (x,t) (I.Label f) is fs  -> "CallDir: ("++ x ++") "++ f ++" "++show is++" "++show fs
     Save      x var                    -> "Save: "++ x ++" "++ var
     Restore   (x, t) var               -> "Restore: "++ x ++" "++ var
