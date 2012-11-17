module Asm where

import qualified Type as T
import qualified IdMod as I

import Data.List(nub, delete)

data IdOrIm = V I.Id | C Int deriving Show
data T =  
    Ans Exp
  | Let (I.Id, T.T) Exp T
data Exp = 
    Nop
  | Set Int  -- integer必須だった??
  | SetF Float
  | SetL I.Label
  | Mov  I.Id 
  | Neg  I.Id
  | Add  I.Id IdOrIm
  | Sub  I.Id IdOrIm
  | SLL  I.Id Int
  | SRA  I.Id Int
  | Ld   I.Id IdOrIm
  | St   I.Id I.Id IdOrIm
  | FMov I.Id
  | FNeg I.Id
  | Fabs I.Id    
  | Sqrt I.Id    
  | FAdd I.Id I.Id 
  | FSub I.Id I.Id 
  | FMul I.Id I.Id 
  | FDiv I.Id I.Id 
  | LdF  I.Id IdOrIm
  | StF  I.Id I.Id IdOrIm
  | IfEq I.Id IdOrIm T T 
  | IfLe I.Id IdOrIm T T
  | IfGe I.Id IdOrIm T T        -- ifgtはsimmで出てくるだけ
  | IfFEq I.Id I.Id T T 
  | IfFLe I.Id I.Id T T
  | CallCls I.Id    [I.Id] [I.Id]
  | CallDir I.Label [I.Id] [I.Id]
  | Save I.Id I.Id       -- Save "$ri" "n" ==>> レジスタriをスタック変数nに退避
  | Restore I.Id
data Fundef = Fundef{name :: I.Label, args :: [I.Id], fargs :: [I.Id]
                    ,body :: T,       ret  :: T.T }
type Prog = (T, [Fundef])


-- register
iRegs  :: [I.Id]
iRegs  = map (\i -> "$r"++(show i)) [2..28]
  
fRegs :: [I.Id]
fRegs = map (\i -> "$f"++(show i)) [0..26]
  
regZr = "$r0"
regFr = "$r1"   -- アセンブリ用
regSw = "$r27"   
regCl = "$r28"
regSp = "$r29"
regHp = "$r30"
regRa = "$r31"

regSwF= "$f26"
regMiOneF= "$f29"
regZrF= "$f30"
regOneF= "$f31"

isReg :: I.Id -> Bool
isReg id | (take 2 id) == "$r" = True
isReg id | (take 2 id) == "$f" = True
isReg _           = False

---汎用関数
mySeq :: Exp -> T -> I.IdState T
mySeq e1 e2 = do new <- I.genTmpId T.Unit
                 return $ Let (new, T.Unit) e1 e2
  
concatLet :: (I.Id, T.T) -> T -> T -> T
concatLet xt e1@(Ans e1') e2      = Let xt e1' e2
concatLet xt (Let yt e1' e1'') e2 = Let yt e1' $ concatLet xt e1'' e2

-- free variable (save, restore辺りがちょっと謎) 連結リストだからやばそう
freeVar :: T -> [I.Id]
freeVar e = case e of
  Ans exp          -> nub $ freeVarExp exp
  Let (x,t) exp e' -> nub $ (nub $ freeVarExp exp) ++ (delete x $ freeVar e')

freeVarExp :: Exp -> [I.Id]
freeVarExp exp = case exp of
  Nop                   -> []
  Set  _                -> []
  SetF _                -> []
  SetL _                -> []
  Mov  x                -> [x]
  Neg  x                -> [x]
  Add  x y'             -> x:(freeIdIm y')
  Sub  x y'             -> x:(freeIdIm y')
  SLL  x i              -> [x]
  SRA  x i              -> [x]
  Ld   x y'             -> x:(freeIdIm y')
  St   x y z'           -> x:y:(freeIdIm z')
  FMov x                -> [x]
  FNeg x                -> [x]
  Fabs x                -> [x]  
  Sqrt x                -> [x]  
  FAdd x y              -> [x,y]
  FSub x y              -> [x,y]
  FMul x y              -> [x,y]
  FDiv x y              -> [x,y]
  LdF  x y'             -> x:(freeIdIm y')
  StF  x y z'           -> x:y:(freeIdIm z')
  IfEq x y' e1 e2       -> x:((freeIdIm y')++(nub $ (freeVar e1) ++ (freeVar e2)))
  IfLe x y' e1 e2       -> x:((freeIdIm y')++(nub $ (freeVar e1) ++ (freeVar e2)))
  IfGe x y' e1 e2       -> x:((freeIdIm y')++(nub $ (freeVar e1) ++ (freeVar e2)))  
  IfFEq x y e1 e2       -> x:y:(nub $ (freeVar e1) ++ (freeVar e2))
  IfFLe x y e1 e2       -> x:y:(nub $ (freeVar e1) ++ (freeVar e2))
  CallCls x ys zs       -> x:(ys ++ zs)
  CallDir _ ys zs       -> ys ++ zs
  Save x n              -> [x]
  Restore n             -> []
  
freeIdIm :: IdOrIm -> [I.Id]
freeIdIm (V x) = [x]
freeIdIm (C _) = []
  
----show instance-----------------
--fundef
instance Show Fundef where  
  show Fundef{ name = I.Label x, args = is, fargs = fs
             , body = e             , ret  = tRet }
     =  "Label-func: "++(show x)++
        "\nargs: "++(concatMap (\s -> s++", ") is)++
        "\nfargs: "++(concatMap (\s -> s++", ") fs)++
        "\nret: "++(show tRet)++"\n"++
        (show e)

--T
instance Show T where
  show insts = printLet insts 0
printLet (Ans exp)          dep  = printAsm exp dep
printLet (Let xt exp insts) dep  = indent++"Let: "++(show xt)++"\n"++
                                   (printAsm exp (dep+1))++(printLet insts (dep+1))
  where indent = concat $ take dep $ repeat " "


--exp
instance Show Exp where
  show exp = printAsm exp 0
printAsm :: Exp -> Int -> String
printAsm exp dep = 
  indent ++ 
  (case exp of
      Nop         -> "Nop"   ++"\n"
      Set  i      -> "Set: " ++(show i)++"\n"
      SetF f      -> "SetF: "++(show f)++"\n"
      SetL l      -> "SetL: "++(show l)++"\n"
      Mov  x      -> "Mov: " ++(show x)++"\n"
      Neg  x      -> "Neg: " ++(show x)++"\n"
      FNeg x      -> "FNeg: "++(show x)++"\n"
      Fabs x      -> "Fabs: "++(show x)++"\n"      
      Sqrt x      -> "Sqrt: "++(show x)++"\n"      
      FMov x      -> "FMov: "++(show x)++"\n"
      Add x1 x2   -> "Add: "++(show x1)++", "++(show x2)++"\n"
      Sub x1 x2   -> "Sub: "++(show x1)++", "++(show x2)++"\n"
      SLL x1 i    -> "SLL: "++(show x1)++", "++(show i)++"\n"
      SRA x1 i    -> "SRA: "++(show x1)++", "++(show i)++"\n"
      Ld  x1 x2   -> "Ld : "++(show x1)++", "++(show x2)++"\n"
      St  x1 x2 x3-> "St : "++(show x1)++", "++(show x2)++(show x3)++"\n"      
      FAdd x1 x2  -> "FAdd: "++(show x1)++", "++(show x2)++"\n"
      FSub x1 x2  -> "FSub: "++(show x1)++", "++(show x2)++"\n"
      FMul x1 x2  -> "FMul: "++(show x1)++", "++(show x2)++"\n"
      FDiv x1 x2  -> "FDiv: "++(show x1)++", "++(show x2)++"\n"
      LdF x1 x2   -> "LdF: "++(show x1)++", "++(show x2)++"\n"
      StF x1 x2 x3-> "StF: "++(show x1)++", "++(show x2)++(show x3)++"\n"      
      IfEq x1 x2 e1 e2    -> "IfEq: "++(show x1)++", "++(show x2)++"\n"
                             ++(printE e1)++(printE e2)
      IfLe x1 x2 e1 e2    -> "IfLe: "++(show x1)++", "++(show x2)++"\n"
                             ++(printE e1)++(printE e2)
      IfGe x1 x2 e1 e2    -> "IfGe: "++(show x1)++", "++(show x2)++"\n"
                             ++(printE e1)++(printE e2)                             
      IfFEq x1 x2 e1 e2   -> "IfFEq: "++(show x1)++", "++(show x2)++"\n"
                             ++(printE e1)++(printE e2)
      IfFLe x1 x2 e1 e2   -> "IfFLe: "++(show x1)++", "++(show x2)++"\n"
                             ++(printE e1)++(printE e2)
      CallCls x is fs     -> "CallCls: "++(show x)++", args: "++(concatMap (\s -> (show s)++", ") (is++fs))++"\n"
      CallDir x is fs     -> "CallDir: "++(show x)++", args: "++(concatMap (\s -> (show s)++", ") (is++fs))++"\n"
      Save    x y         -> "Save: "   ++(show x)++(show y)++"\n"
      Restore x           -> "Restore: "++(show x)++"\n"
  )
    where printE = \e -> printLet e (dep+1)
          indent = concat $ take dep $ repeat " "
