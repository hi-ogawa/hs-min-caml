module RegColoring where

import qualified Type as T
import qualified IdMod as I
import qualified Asm as As
import Block

import qualified Data.Map as Mp
import qualified Data.Set as St

-- 頂点とその変数につながる頂点の集合のマップ
data RegGraph1 = Mp.Map I.Id (St.Set I.Id)
  
genGraph :: Fundef -> RegGraph
genGraph f@Fundef{fBlocks = bmap, fHead = first} = undefined
  where livess = (map ( . snd) . Mp.assocs) bmap
