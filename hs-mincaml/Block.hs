module Block where

import qualified Type as T
import qualified IdMod as I
import qualified Asm as As

import qualified Data.Set as St
import qualified Data.Map as Mp
import Control.Monad.Writer

-- blockを集める(runしたあとMapにまとめる)
type MyMonadWS = I.IdStateT (StateT [(I.Id, Block)])

data Fundef = Fundef{fId:: I.Label, fArgs :: [I.Id], fFargs :: [I.Id], fRet::T.T,
                     -- fBlocks :: St.Set I.Id, fHead :: I.Id,
                     fBlocks :: Mp.Map I.Id Block, fHead :: I.Id,
                     fDefRegs:: [I.Id], fcalls :: [I.Label]}
-- <<関数>>
-- 関数のラベル, 整数引数のID, 浮動小数引数のID, 返り値の型
-- 関数内のBlock群, 関数で始めに呼ばれるBlock
-- 関数内で使用されるレジスタ群, 関数内で呼び出す関数群

data Block  = Block{bId :: I.Id, {- bFundef:: I.Label, -} bStmts :: [Stmt], -- St.Set I.Id
                    bPred :: [I.Id], bSucc :: [I.Id],
--                    bHead :: I.Id,   bTail :: I.Id,
                    bLiveIn :: [I.Id], bLiveOut :: [I.Id]}
-- <<基本ブロック>>
-- BlockのID, このBlockを使用する関数ラベル, このBlock内で発行するStmt群
-- このBlockに入るBlock群, このBlockから続くBlock群 (高々2つ??)
-- 最初のStmt, 最後のStmt
-- このBlockの実行直前の生存変数群、このBlockの実行直後の生存変数群

data Stmt   = Stmt {{-sId :: I.Id, -}{-sBlock :: I.Id,-} sInst :: Exp,
--                    sPred :: I.Id, sSucc :: I.Id,
                    sLiveIn :: [I.Id], sLiveOut :: [I.Id]}
-- <<基本ブロック>>
-- StmtのId, このStmtを使用するBlockID, 命令種
-- このStmtに入るStmt, このStmtから続くStmt
-- このStmtの直前の生存変数群, このStmtの直後の生存変数群

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
        statemonad       = runState (evalStateT (mapM blockFun (main' : fundefs)) c) []

                
-- Asm関数 を Block関数に変換
blockFun :: As.Fundef -> MyMonadWS Fundef
blockFun As.Fundef{As.name = la@(I.Label x), As.args = is, As.fargs = fs,
                   As.body = bo, As.ret  = retT} = 
  do first      <- I.genNewId x
      -- 関数内のblockを集めるために初期化
     lift $ put []
     (ss, succs)<- asmToBlocks dest [first] bo
      -- 関数内のblockを集める     
     bs <- lift $ get
     let b = blocken first ss [] succs  -- 最初のblock作成
     Fundef{fId == la, fArgs = is, fFargs = fs, fRet = retT,
            fBlocks = Mp.fromList (b:bs), fHead = first}
  where dest = (case retT of
                   T.Unit       -> ("$g0", T.Int)
                   T.Float      -> (As.freg !! 0, T.Float)
                   _            -> (As.ireg !! 0, T.Int))

-- Let列 を Blockの集合へ (Block自体はWriterで書く。eにおける先頭ブロックの後続のブロック郡のIDを返す)
asmToBlocks :: (I.Id, T.T) -> [I.Id] -> As.T -> MyMonadWS ([Stmt], [I.Id])
asmToBlocks dest now e = case e of
  As.Ans exp            -> expToStmt dest now exp >>= (\(s, _, succs) -> return ([s], succs))
  As.Let (x, t) exp e'  -> do (s, divCheck, succs) <- expToStmt (x,t) now exp
                              (if divCheck
                               then do b1 <- I.genNewId "blockCont"
                                       (ss, succs') <- asmToBlocks dest [b1] e'
                                       tell [blocken b1 ss succs succs']
                                       return ([s], succs)
                               else do (ss, succs') <- asmToBlocks dest now e'
                                       return (s:ss, succs'))
  
-- As.Exp を Stmtに変換 (また、blockが分割されるかどうかをBoolで返し。その後続のblockIdも返す)
expToStmt :: (I.Id, T.T) -> [I.Id] -> As.Exp -> MyMonadWS (Stmt, Bool, [I.Id])
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
  As.IfEq  x y' e1 e2    -> do (ss1, succs1) <- asmToBlocks dest now e1; b1 <- I.genNewId "blockIfEq1"
                               (ss2, succs2) <- asmToBlocks dest now e2; b2 <- I.genNewId "blockIfEq2"
                               tell [blocken b1 ss1 now succs1, blocken b2 ss2 now succs2]
                               return (stmten $ IfEq x y' b1 b2, True, [b1, b2])
  As.IfLe  x y' e1 e2    -> do (ss1, succs1) <- asmToBlocks dest now e1; b1 <- I.genNewId "blockIfLe1"
                               (ss2, succs2) <- asmToBlocks dest now e2; b2 <- I.genNewId "blockIfLe2"
                               tell [blocken b1 ss1 now succs1, blocken b2 ss2 now succs2]
                               return (stmten $ IfLe x y' b1 b2, True, [b1, b2])
  As.IfGe  x y' e1 e2    -> do (ss1, succs1) <- asmToBlocks dest now e1; b1 <- I.genNewId "blockIfGe1"
                               (ss2, succs2) <- asmToBlocks dest now e2; b2 <- I.genNewId "blockIfGe2"
                               tell [blocken b1 ss1 now succs1, blocken b2 ss2 now succs2]
                               return (stmten $ IfGe x y' b1 b2, True, [b1, b2])
  As.IfFEq  x y e1 e2    -> do (ss1, succs1) <- asmToBlocks dest now e1; b1 <- I.genNewId "blockIfFEq1"
                               (ss2, succs2) <- asmToBlocks dest now e2; b2 <- I.genNewId "blockIfFEq2"
                               tell [blocken b1 ss1 now succs1, blocken b2 ss2 now succs2]
                               return (stmten $ IfFEq x y b1 b2, True, [b1, b2])
  As.IfFLe  x y e1 e2    -> do (ss1, succs1) <- asmToBlocks dest now e1; b1 <- I.genNewId "blockIfFEq1"
                               (ss2, succs2) <- asmToBlocks dest now e2; b2 <- I.genNewId "blockIfFEq2"
                               tell [blocken b1 ss1 now succs1, blocken b2 ss2 now succs2]
                               return (stmten $ IfFLe x y b1 b2, True, [b1, b2])
  As.CallCls x ys zs     -> error (show __FILE__ ++ show __LINE__)--return (stmten $ CallCls dest x ys zs, False, [])
  As.CallDir l ys zs     -> return (stmten $ CallDir dest l ys zs, False, [])
  As.Save    _ _         -> error (show __FILE__ ++ show __LINE__)
  As.Restore _           -> error (show __FILE__ ++ show __LINE__)
  
    
-- live関係は後で追加
blocken :: I.Id -> [Stmt] -> [I.Id] -> [I.Id] -> (I.Id, Block)
blocken b1 ss preds succs = (b1, Block{bId = b1, bStmts = ss, bPred = preds, bSucc = succs})

-- live関係は後で追加
stmten :: Exp -> Stmt
stmten exp = Stmt{sInst = exp}