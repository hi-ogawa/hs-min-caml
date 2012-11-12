module Type where

data T = Unit
       | Bool
       | Int
       | Float
       | Fun [T] T
       | Tuple [T]
       | Array T
       | Var TypeN
         deriving (Show, Eq, Ord)

-- 型変数はIntで一意に表現
type TypeN = Int