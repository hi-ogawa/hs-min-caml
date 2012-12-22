module RegColoring where

import qualified Type as T
import qualified IdMod as I
import qualified Asm as As
import Block

import qualified Data.Map as Mp
import qualified Data.Set as St
import Data.Maybe (catMaybes, fromJust)
import Data.List (nub, (\\))
import Control.Monad.State
import Control.Monad.Reader
import Control.Monad(when)
import qualified Debug.Trace as DT

-- 頂点とその変数につながる頂点の集合のマップ(隣接リスト的な何か)
type RegGraph = Mp.Map I.Id (St.Set I.Id)
type RegMap  = Mp.Map I.Id Int
type RegMap' = Mp.Map I.Id (Maybe Int)

regColorMain :: [Fundef] -> [Fundef]
regColorMain fundefs = map (setCalls.regAlloc) fundefs

-- 関数毎にどれだけの個数のレジスタを使用するか(何色で塗れるか)
regAlloc :: Fundef -> Fundef
regAlloc f@Fundef{fArgs = is, fFargs = fs} = f{fRegMapI = regMapI, fRegMapF = regMapF}
  where (graphI, graphF)   = genGraph f
        regMapI            = graphToMap is graphI
        regMapF            = graphToMap fs graphF

-- グラフっぽいの作る
genGraph :: Fundef -> (RegGraph, RegGraph)
genGraph f@Fundef{fBlocks = bmap} = (graphI, graphF)
  where ss = (concatMap (bStmts . snd) . Mp.assocs) bmap :: [Stmt]                -- body中の全てのstmt
        livesI = nub $ concatMap (\s -> [sLiveOutI s, sLiveInI s]) ss :: [[I.Id]] -- body中の全ての区間における生存変数(Int)
        varsI  = nub $ concat livesI :: [I.Id]                                    -- body中に出現する変数(Int)
        graphI = Mp.fromList $ map (\v -> (v, St.fromList $ concat $ filter (elem v) livesI)) varsI
        livesF = nub $ concatMap (\s -> [sLiveOutF s, sLiveInF s]) ss :: [[I.Id]]
        varsF  = nub $ concat livesF :: [I.Id]
        graphF = Mp.fromList $ map (\v -> (v, St.fromList $ concat $ filter (elem v) livesF)) varsF

-- とりあえずスピルは無視死
graphToMap :: [I.Id] -> RegGraph -> RegMap -- 変数と塗り分けた色の組
graphToMap args graph = xcMap
  where xs = Mp.keys graph \\ args
        initMap = Mp.fromList $ (zip args (map (Just) [0..])) ++ map (, Nothing) xs      -- 関数の引数は順に[0..]と割り当てておく
        xcMap = Mp.map fromJust $ execState (runReaderT (mapM_ coloring xs) graph) initMap
  
-- 変数にレジスタ番号(Color)を割り振る
coloring :: I.Id -> ReaderT RegGraph (State RegMap') ()
coloring x = do neighs <- asks (\graph -> St.toList $ graph Mp.! x)
                nums <- gets (\regMap -> catMaybes $ map (\y -> regMap Mp.! y) neighs)
                (if null nums
                 then modify (Mp.insert x (Just 0))
                 else let max = head $ filter (\i -> not $ elem  i nums) [0..]
                      in modify (Mp.insert x (Just max)))

-- 関数の依存関係(呼び出し、呼び出される関係)を求める(ついで)
setCalls :: Fundef -> Fundef
setCalls f@Fundef{fId = fname, fBlocks = bmap} = 
  f{fCalls = calls}
  where calls = nub . concatMap (getCalls . snd) $ Mp.toList bmap
        getCalls b = concatMap (\s -> case sInst s of
                                   CallDir _ (I.Label callF) _ _ | callF /= fname -> [callF]
                                   _                 -> []
                               ) (bStmts b)