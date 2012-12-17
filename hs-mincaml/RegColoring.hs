module RegColoring where

import qualified Type as T
import qualified IdMod as I
import qualified Asm as As
import Block

import qualified Data.Map as Mp
import qualified Data.Set as St
import Data.Maybe (catMaybes, fromJust)
import Data.List (nub)
import Control.Monad.State
import Control.Monad.Reader

-- 頂点とその変数につながる頂点の集合のマップ(隣接リスト的な何か)
type RegGraph = Mp.Map I.Id (St.Set I.Id)
type RegMap  = Mp.Map I.Id Int
type RegMap' = Mp.Map I.Id (Maybe Int)

main :: [Fundef] -> [Fundef]
main fundefs = undefined

genGraph :: Fundef -> RegGraph
genGraph f@Fundef{fBlocks = bmap} = graph
  where ss = (concatMap (bStmts . snd) . Mp.assocs) bmap :: [Stmt] -- body中の全てのstmt
        lives = nub $ concatMap (\s -> [sLiveOut s, sLiveIn s]) ss :: [[I.Id]] -- body中の全ての区間における生存変数たち
        vars  = nub $ concat lives :: [I.Id] -- body中に出現する変数
        graph = Mp.fromList $ map (\v -> (v, St.fromList $ concat $ filter (elem v) lives)) vars
        
-- 関数毎にどれだけの個数のレジスタを使用するか(何色で塗れるか)
regAlloc :: Fundef -> Fundef
regAlloc f = f{fRegMap = regMap}
  where graph = genGraph f
        regMap = graphToMap graph

-- とりあえずスピルは無視死
graphToMap :: RegGraph -> RegMap -- 変数と塗り分けた色の組
graphToMap graph = xcMap
  where xs = Mp.keys graph
        initMap = Mp.fromList $ map (, Nothing) xs
        xcMap = Mp.map fromJust $ execState (runReaderT (mapM_ coloring xs) graph) initMap
  
-- 変数にレジスタ番号(Color)を割り振る
coloring :: I.Id -> ReaderT RegGraph (State RegMap') ()
coloring x = do neighs <- asks (\graph -> St.toList $ graph Mp.! x)
                nums <- gets (\regMap -> catMaybes $ map (\y -> regMap Mp.! y) neighs)
                (if null nums
                 then modify (Mp.insert x (Just 0)) -- 一つ目の変数にはゼロを振る
                 else let max = maximum nums
                      in modify (Mp.insert x (Just (max + 1))))

-- 関数の依存関係(呼び出し、呼び出される関係)を求める
setCalls :: Fundef -> Fundef
setCalls f@Fundef{fBlocks = bmap} = 
  f{fCalls = calls}
  where calls = concatMap (getCalls . snd) $ Mp.toList bmap
        getCalls b = concatMap (\s -> case sInst s of
                                   CallDir _ lab _ _ -> [lab]
                                   _                 -> []
                               ) (bStmts b)