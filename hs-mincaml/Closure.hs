module Closure where

import qualified Type as T
import qualified IdMod as I
import qualified Typing as Typi
import qualified KNormal as K
import qualified GlobalEnv as G

import qualified Data.Map as Mp
import qualified Data.Set as St
import Control.Monad.State
import Data.Maybe (catMaybes)
import qualified Debug.Trace as DT

data Clos = Clos{entry :: I.Label, actualFv :: [I.Id]}  -- label
          deriving (Show, Eq)
data T = Unit
       | Int Int
       | Float Float
       | Neg I.Id
       | FNeg I.Id         
       | Fabs I.Id
       | Sqrt I.Id
       | Add I.Id I.Id
       | Sub I.Id I.Id
       | SLL I.Id Int
       | SRA I.Id Int
       | FAdd I.Id I.Id
       | FSub I.Id I.Id
       | FMul I.Id I.Id
       | FDiv I.Id I.Id
       | IfEq I.Id I.Id T T
       | IfLe I.Id I.Id T T
       | Let (I.Id, T.T) T T
       | Var I.Id
       | MakeCls (I.Id, T.T) Clos T     -- closure
       | AppCls I.Id [I.Id]
       | AppDir I.Label [I.Id]          -- label
       | Tuple [I.Id]
       | LetTuple [(I.Id, T.T)] I.Id T
       | Get I.Id I.Id
       | Put I.Id I.Id I.Id
         deriving (Eq)
data Fundef = Fundef { name :: (I.Label,   T.T) -- label
                     , args :: [(I.Id,     T.T)]
                     , formalFv :: [(I.Id, T.T)]
                     , body :: T }
            deriving (Eq)              
type TopLevel = [Fundef]
type Prog = (T, TopLevel)

type KnownSet = St.Set I.Id 
type ClosMonad = G.ReadGlobal (State TopLevel)

closMain :: G.GloTup -> K.T -> Prog
closMain gloTup kExp = 
  let !_ = DT.trace ("closure...") () in  
  runState (G.runGlobal (cloNize Mp.empty St.empty kExp) gloTup) []


cloNize :: Typi.TypeEnv -> KnownSet -> K.T -> ClosMonad T
cloNize tEnv kSet exp = case exp of
  K.Unit        -> return $ Unit
  K.Int i       -> return $ Int i
  K.Float f     -> return $ Float f
  K.Neg  x      -> return $ Neg x
  K.FNeg y      -> return $ FNeg y
  K.Fabs y      -> return $ Fabs y  
  K.Sqrt y      -> return $ Sqrt y  
  K.Add x y     -> return $ Add x y
  K.Sub x y     -> return $ Sub x y
  K.SLL x i     -> return $ SLL x i
  K.SRA x i     -> return $ SRA x i  
  K.FAdd x y    -> return $ FAdd x y
  K.FSub x y    -> return $ FSub x y
  K.FMul x y    -> return $ FMul x y
  K.FDiv x y    -> return $ FDiv x y
  K.IfEq x y e1 e2      -> do{ [e1',e2'] <- mapM (cloNize tEnv kSet) [e1,e2]
                             ; return $ IfEq x y e1' e2' }
  K.IfLe x y e1 e2      -> do{ [e1',e2'] <- mapM (cloNize tEnv kSet) [e1,e2]
                             ; return $ IfLe x y e1' e2' }
  K.Var x               -> return $ Var x
  K.Let (x,t) e1 e2     -> do{ e1' <- cloNize tEnv kSet e1
                             ; e2' <- cloNize (Mp.insert x t tEnv) kSet e2
                             ; return $ Let (x,t) e1' e2'}
  K.LetRec (K.Fundef{K.name=(x,t), K.args=yts, K.body=e1}) e2
    -> do{ backup <- get
         ; let tEnv' = Mp.insert x t tEnv
         ; let tEnv'' = foldl (\env (k,e)-> Mp.insert k e env) tEnv' yts
         ; let kSet' = St.insert x kSet
         ; e1' <- cloNize tEnv'' kSet' e1   -- 関数xがクロージャでないと仮定する
                  -- 関数x自身はfree扱い(AppDirを除いて)
         ; let diff = St.difference (freeVar e1') (St.fromList $ (fst.unzip) yts)
         ; globals <- fmap Mp.keys G.env  -- globalな変数は引き算
         ; let diff' = St.difference diff (St.fromList globals)
         ; (kSet', e1') <- if St.null diff'
                           then do let !_ = DT.trace ("making dirfunc: "++x) ()
                                   return (kSet', e1')     -- nullならそのままでOK
                           else do let !_ = DT.trace ("making closure: "++x) ()
                                   put backup          -- 自由変数があったらbackup 
                                   e1' <- cloNize tEnv'' kSet e1
                                   return (kSet, e1')
         ; let freezs = St.toList $ St.difference (freeVar e1')
                         (St.insert x (St.fromList $ (fst.unzip) yts))
               -- globalな変数は引数から除く                        
         ; freezs' <- filterM (\x -> fmap not (G.memGlo x)) freezs
         ; let freezts = zip freezs $ catMaybes $ map (\z-> Mp.lookup z tEnv') freezs'
         ; modify (\ls -> (Fundef{ name=(I.Label x, t), args=yts
                                 , formalFv= freezts, body= e1'}):ls)
         ; e2' <- cloNize tEnv' kSet' e2
         ; if St.member x (freeVar e2')
              -- x を変数として使う(関数そのものを返り値にするときなど)
           then return $ MakeCls (x,t) Clos{entry=I.Label x, actualFv=freezs'} e2'
           else return e2'}
  K.App x ys | St.member x kSet -> return $ AppDir (I.Label x) ys
  K.App x ys                    -> return $ AppCls x ys
  K.Tuple xs            -> return $ Tuple xs
  K.LetTuple xts y e    
    -> do{ let tEnv' = foldl (\env (k,e) -> Mp.insert k e env) tEnv xts
         ; e' <- cloNize tEnv' kSet e; return $ LetTuple xts y e'}
  K.Get x y             -> return $ Get x y
  K.Put x y z           -> return $ Put x y z
  K.ExtFunApp x ys      -> return $ AppDir (I.Label ("min_caml_"++x)) ys
  
--------自由変数-------------------  
freeVar :: T -> St.Set I.Id
freeVar exp = case exp of
  Unit          -> St.empty
  Int _         -> St.empty
  Float _       -> St.empty
  Neg x         -> St.singleton x
  FNeg x        -> St.singleton x
  Fabs x        -> St.singleton x  
  Sqrt x        -> St.singleton x  
  Add x y       -> St.fromList [x, y]
  Sub x y       -> St.fromList [x, y]
  SLL x i       -> St.singleton x
  SRA x i       -> St.singleton x
  FAdd x y      -> St.fromList [x, y]
  FSub x y      -> St.fromList [x, y]
  FMul x y      -> St.fromList [x, y]
  FDiv x y      -> St.fromList [x, y]
  IfEq x y e1 e2        -> St.insert x $ St.insert y $ St.union (freeVar e1) (freeVar e2)
  IfLe x y e1 e2        -> St.insert x $ St.insert y $ St.union (freeVar e1) (freeVar e2)
  Let (x,_) e1 e2       -> St.union (freeVar e1) (St.delete x $ freeVar e2)
  Var x         -> St.singleton x
  MakeCls (x, t) (Clos{entry=l, actualFv=ys}) e
    -> St.delete x $ St.union (St.fromList ys) (freeVar e)
  AppCls x ys           -> St.fromList (x:ys)
  AppDir _ ys           -> St.fromList ys
  Tuple xs              -> St.fromList xs
  LetTuple xts y e      
    -> St.insert y $ St.difference (freeVar e) (St.fromList $ (fst.unzip) xts)
  Get x y               -> St.fromList [x, y] 
  Put x y z             -> St.fromList [x, y, z] 

---show instance---------------------------
  
instance Show Fundef where  
  show Fundef{name=(I.Label x, t), args=yts, formalFv=zts , body = e} =
    "Label-func: "++(printXT (x,t))++"\nArgs: "++(concatMap printXT yts)
    ++"\nFreeVar: "++(concatMap printXT zts)++"\n"++(show e)
      where printXT (x,t) = "["++x++" ("++(show t)++")] "  

instance Show T where
  show exp = printClosure exp 0
    
printClosure :: T -> Int -> String
printClosure exp dep = 
  indent ++ 
  (case exp of
    Unit        -> "Unit"++"\n"
    Int i       -> "Int: "++(show i)++"\n"
    Float f     -> "Float: "++(show f)++"\n"
    Neg x       -> "Neg: "++(show x)++"\n"
    FNeg x      -> "FNeg: "++(show x)++"\n"
    Fabs x      -> "Fabs: "++(show x)++"\n"    
    Sqrt x      -> "Sqrt: "++(show x)++"\n"    
    Add x1 x2   -> "Add: "++(show x1)++", "++(show x2)++"\n"
    Sub x1 x2   -> "Sub: "++(show x1)++", "++(show x2)++"\n"
    SLL x i     -> "SLL: "++(show x)++", "++(show i)++"\n"
    SRA x i     -> "SRA: "++(show x)++", "++(show i)++"\n"    
    FAdd x1 x2  -> "FAdd: "++(show x1)++", "++(show x2)++"\n"
    FSub x1 x2  -> "FSub: "++(show x1)++", "++(show x2)++"\n"
    FMul x1 x2  -> "FMul: "++(show x1)++", "++(show x2)++"\n"
    FDiv x1 x2  -> "FDiv: "++(show x1)++", "++(show x2)++"\n"
    IfEq x1 x2 e1 e2    -> "IfEq: "++(show x1)++", "++(show x2)++"\n"
                           ++(printE e1)++(printE e2)
    IfLe x1 x2 e1 e2    -> "IfLe: "++(show x1)++", "++(show x2)++"\n"
                           ++(printE e1)++(printE e2)
    Var x       -> "Var: "++x++"\n"
    Let xt e1 e2        -> "Let: "++(printXT xt)++"\n"++(printE e1)++
                           indent++"In\n"++(printE e2)
    MakeCls xt clos e
      -> "MakeCls: "++(printXT xt)++(show clos)++"\n"++indent++(printE e)
    AppCls x xs    
        -> "AppCls: "++(show x)++", args: "++(concatMap (\s -> (show s)++", ") xs)++"\n" 
    AppDir (I.Label x) xs    
        -> "AppDir: "++(show x)++", args: "++(concatMap (\s -> (show s)++", ") xs)++"\n"
    Tuple xs    -> "Tuple: "++(concatMap (\s -> (show s)++", ") xs)++"\n"
    LetTuple xts x e2  -> "LetTuple: "++(concatMap printXT xts)++" = "
                           ++(show x)++"\n"++indent++"In\n"++(printE e2)
    Get x1 x2   -> "Get: "++(show x1)++", "++(show x2)++"\n"
    Put x1 x2 x3-> "Put: "++(show x1)++", "++(show x2)++", "++(show x3)++"\n"

  )
    where indent = (concat $ take dep (repeat " "))
          printE = \e -> printClosure e (dep+1)
          printXT (x,t) = "["++x++" ("++(show t)++")] "
    
