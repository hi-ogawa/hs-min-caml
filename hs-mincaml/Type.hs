module Type where

import Data.Map as Mp
import Control.Monad.State
import Control.Monad.Identity

data T = Unit
       | Bool
       | Int
       | Float
       | Fun [T] T
       | Tuple [T]
       | Array T
       | Var TypeN
       | Schema [TypeN] T
         deriving (Show, Eq, Ord)

-- 型変数はIntで一意に表現
type TypeN = Int
type TyStateT = StateT TypeN
type TyState  = TyStateT Identity

genTypeVar :: Monad m => TyStateT m T
genTypeVar = do{ tvar <- get; put (tvar + 1)
               ; return $ Var (tvar + 1) }