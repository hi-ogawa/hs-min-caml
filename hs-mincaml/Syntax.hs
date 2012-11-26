module Syntax where

import qualified Type as T
import qualified IdMod as I

data T = Unit
       | Bool Bool
       | Int Int
       | Float Float
       | Not T
       | Neg T
       | AddP T T               -- polymorphism
       | Add T T | Sub T T
       | SLL T Int | SRA T Int
       | FNeg T
       | Fabs T
       | FAdd T T | FSub T T | FMul T T | FDiv T T
       | Eq T T | Le T T
       | Sqrt T
       | If T T T
       | Var I.Id
       | Let (I.Id,T.T)  T T                          
       | LetRec Fundef T
       | App T [T]
       | Tuple [T]
       | LetTuple [(I.Id, T.T)] T T
       | Array T T
       | Get T T
       | Put T T T      
       deriving (Eq, Ord)
                
data Fundef = Fundef {name :: (I.Id, T.T), args :: [(I.Id, T.T)], body :: T} 
            deriving (Eq, Ord)
                     
instance Show T where
  show exp = printSyntax exp 0
    
printSyntax :: T -> Int -> String
printSyntax exp dep = 
  indent ++ 
  (case exp of
    Unit        -> "Unit"++"\n"
    Bool b      -> "Bool: "++(show b)++"\n"
    Int i       -> "Int: "++(show i)++"\n"
    Float f     -> "Float: "++(show f)++"\n"
    Not e       -> "Not\n"++(printE e)
    Neg e       -> "Neg\n"++(printE e)
    FNeg e      -> "FNeg\n"++(printE e)
    Fabs e      -> "Fabs\n"++(printE e)
    Sqrt e      -> "Sqrt\n"++(printE e)    
    AddP e1 e2   -> "AddP\n"++(printE e1)++(printE e2)    
    Add e1 e2   -> "Add\n"++(printE e1)++(printE e2)
    Sub e1 e2   -> "Sub\n"++(printE e1)++(printE e2)
    SLL e i     -> "SLL: "++(show i)++"\n"++(printE e)
    SRA e i     -> "SRA: "++(show i)++"\n"++(printE e)
    FAdd e1 e2  -> "FAdd\n"++(printE e1)++(printE e2)
    FSub e1 e2  -> "FSub\n"++(printE e1)++(printE e2)
    FMul e1 e2  -> "FMul\n"++(printE e1)++(printE e2)
    FDiv e1 e2  -> "FDiv\n"++(printE e1)++(printE e2)
    Eq e1 e2    -> "Eq\n"++(printE e1)++(printE e2)
    Le e1 e2    -> "Le\n"++(printE e1)++(printE e2)
    If e1 e2 e3 -> "If\n"++(printE e1)++
                   indent++"Then\n"++(printE e2)++
                   indent++"Else\n"++(printE e3)
    Var x       -> "Var: "++x++"\n"
    Let xt e1 e2     -> "Let: "++(printXT xt)++"\n"++(printE e1)++
                        indent++"In\n"++(printE e2)
    LetRec (Fundef{name=xt, args=yts, body=e1}) e2
      -> "LetRec: "++(printXT xt)++" args:"++(concatMap printXT yts)++"\n"
         ++(printE e1)++indent++"In\n"++(printE e2)
    App e es    -> "App\n"++(printE e)++(concatMap printE es)
    Tuple es    -> "Tuple\n"++(concatMap printE es)
    LetTuple xts e1 e2  -> "LetTuple: "++(concatMap printXT xts)++"\n"
                           ++(printE e1)++indent++"In\n"++(printE e2)
    Array e1 e2 -> "Array\n"++(printE e1)++(printE e2)
    Get e1 e2   -> "Get\n"++(printE e1)++(printE e2)
    Put e1 e2 e3-> "Put\n"++(printE e1)++(printE e2)++(printE e3)
  )
    where indent = (concat $ take dep (repeat " "))
          printE = \e -> printSyntax e (dep+1)
          printXT (x,t) = "["++x++" ("++(show t)++")] "
