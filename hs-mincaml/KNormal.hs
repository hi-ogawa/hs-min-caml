{-# LANGUAGE CPP #-}
module KNormal where

import qualified Type as T
import qualified IdMod as I
import qualified Syntax as S
import qualified Typing as Typi

import qualified Data.Map as Mp
import qualified Data.Set as St
import Control.Monad.State
import qualified Debug.Trace as DT

type TypeEnv = Mp.Map I.Id T.T

data T = Unit
--       | Bool Bool            -- boolはint(0 or 1)になる
       | Int Int
       | Float Float
--       | Not I.Id
       | Neg I.Id
       | Add I.Id I.Id | Sub I.Id I.Id
       | SLL I.Id Int  | SRA I.Id Int
       | FNeg I.Id
       | Fabs I.Id         
       | Sqrt I.Id
       | FAdd I.Id I.Id | FSub I.Id I.Id | FMul I.Id I.Id | FDiv I.Id I.Id
--       | Eq I.Id I.Id | Le I.Id I.Id  -- ifEq ifLe になる
       | IfEq I.Id I.Id T T
       | IfLe I.Id I.Id T T
       | Var I.Id
       | Let (I.Id, T.T) T T                          
       | LetRec Fundef T
       | App I.Id [I.Id]
       | Tuple [I.Id]
       | LetTuple [(I.Id, T.T)] I.Id T
--       | Array I.Id           -- arrayは関数適応(ExtFunApp)になる
       | Get I.Id I.Id
       | Put I.Id I.Id I.Id      
       | ExtFunApp I.Id [I.Id]
--       | ExtArray             -- とりあえず無視
       deriving (Eq, Ord)
data Fundef = Fundef {name :: (I.Id, T.T), args :: [(I.Id, T.T)], body :: T} 
              deriving (Eq, Ord)                
                       
insertLet :: (T, T.T) -> (I.Id -> I.IdState (T, T.T)) 
             -> I.IdState (T, T.T)
insertLet (Var x, _) k = k x
insertLet (e, ty)    k = do{ newX <- I.genTmpId ty
                           ; (e', ty') <- k newX
                           ; return $ (Let (newX, ty) e e', ty') }
                           
kNizeMain :: S.T -> I.Counter -> (T, I.Counter)
kNizeMain typedExp c = 
  let !_ = DT.trace ("knormalizing...") () in
  (kNizedExp, c')
  where ((kNizedExp, _), c') = runState (kNize Mp.empty typedExp) c


-----------K正規化---------------------
kNize :: TypeEnv -> S.T -> I.IdState (T, T.T)
kNize tEnv exp = case exp of
  S.Unit        -> return (Unit, T.Unit)
  S.Bool b      -> return (Int (if b then 1 else 0), T.Int)
  S.Int i       -> return (Int i, T.Int)
  S.Float f     -> return (Float f, T.Float)
  S.Not e       -> kNize tEnv (S.If e (S.Bool False) (S.Bool True))
  S.Neg e       -> do et <- kNize tEnv e
                      insertLet et
                        (\x -> return (Neg x, T.Int))
  S.FNeg e      -> do et <- kNize tEnv e
                      insertLet et
                        (\x -> return (FNeg x, T.Float))
  S.Fabs e      -> do et <- kNize tEnv e
                      insertLet et
                        (\x -> return (Fabs x, T.Float))
  S.Sqrt e      -> do et <- kNize tEnv e
                      insertLet et
                        (\x -> return (Sqrt x, T.Float))
  -- polymorphism                        
  S.AddP e1 e2  -> do [et1@(e1', t1), et2@(e2', t2)] <- mapM (kNize tEnv) [e1, e2]
                      insertLet et1
                        (\x -> insertLet et2
                               (\y -> (case t1 of
                                          T.Int   -> return ((Add x y),  T.Int)
                                          T.Float -> return ((FAdd x y), T.Float)
                                          _       -> error (show __FILE__)
                                      )
                               )
                        )
  S.Add e1 e2   -> do [et1, et2] <- mapM (kNize tEnv) [e1, e2]
                      insertLet et1
                        (\x -> insertLet et2
                               (\y -> return (Add x y, T.Int)))
  S.Sub e1 e2   -> do [et1, et2] <- mapM (kNize tEnv) [e1, e2]
                      insertLet et1
                        (\x -> insertLet et2
                               (\y -> return (Sub x y, T.Int)))
  S.SLL e i     -> do et <- kNize tEnv e
                      insertLet et (\x -> return (SLL x i, T.Int))
  S.SRA e i     -> do et <- kNize tEnv e
                      insertLet et (\x -> return (SRA x i, T.Int))
  S.FAdd e1 e2  -> do [et1, et2] <- mapM (kNize tEnv) [e1, e2]
                      insertLet et1
                        (\x -> insertLet et2
                               (\y -> return (FAdd x y, T.Float)))
  S.FSub e1 e2  -> do [et1, et2] <- mapM (kNize tEnv) [e1, e2]
                      insertLet et1
                        (\x -> insertLet et2
                               (\y -> return (FSub x y, T.Float)))
  S.FMul e1 e2  -> do [et1, et2] <- mapM (kNize tEnv) [e1, e2]
                      insertLet et1
                        (\x -> insertLet et2
                               (\y -> return (FMul x y, T.Float)))
  S.FDiv e1 e2  -> do [et1, et2] <- mapM (kNize tEnv) [e1, e2]
                      insertLet et1
                        (\x -> insertLet et2
                               (\y -> return (FDiv x y, T.Float)))
  cmp@(S.Eq e1 e2)      -> kNize tEnv $ S.If cmp (S.Bool True) (S.Bool False)
  cmp@(S.Le e1 e2)      -> kNize tEnv $ S.If cmp (S.Bool True) (S.Bool False)
  -- boolのnotの最適化 --
  S.If (S.Not e) e3 e4
    -> kNize tEnv (S.If e e4 e3)
  ----------------------
  S.If (S.Eq e1 e2) e3 e4
    -> do [et1, et2, (e3',t), (e4',_)] <- mapM (kNize tEnv) [e1,e2,e3,e4]
          insertLet et1
            (\x -> insertLet et2
                   (\y -> return (IfEq x y e3' e4', t)))
  S.If (S.Le e1 e2) e3 e4
    -> do [et1, et2, (e3',t), (e4',_)] <- mapM (kNize tEnv) [e1,e2,e3,e4]
          insertLet et1
            (\x -> insertLet et2
                   (\y -> return (IfLe x y e3' e4', t)))
  S.If e1 e2 e3 -> kNize tEnv $ S.If (S.Eq e1 (S.Bool True)) e2 e3
  -- 外部変数無視
  S.Var x       -> (case Mp.lookup x tEnv of
                       Just t   -> return (Var x, t)
                       Nothing  -> error (show __FILE__++show __LINE__++show x++show tEnv))
                   
  -- ikuta ---             
  -- S.Let (x,t) (S.If e e1 e2) e3 -> kNize tEnv $ S.If e (S.Let (x,t) e1 e3) (S.Let (x,t) e2 e3)
  ------------
  
  S.Let (x,t) e1 e2     
    -> do{ (e1', _) <- kNize tEnv e1
         ; (e2', t2) <- kNize (Mp.insert x t tEnv) e2
         ; return $ (Let (x,t) e1' e2', t2) }
  S.LetRec (S.Fundef{S.name = (x,t), S.args = yts, S.body = e1}) e2
    -> do{ let tEnv' = Mp.insert x t tEnv 
         ; (e2', t2) <- kNize tEnv' e2
         ; let tEnv'' = foldl (\env (x,t)->Mp.insert x t env) tEnv' yts
         ; (e1', _) <- kNize tEnv'' e1
         ; return $ (LetRec (Fundef{name = (x,t), args = yts, body = e1'}) e2', t2)}
  -- 外部関数処理(mylib_s.s)
  S.App (S.Var f) es | not (Mp.member f tEnv)
    -> do { ets' <- mapM (kNize tEnv) es
          ; (case Mp.lookup f Typi.tEnvInit of
                Just (T.Fun _ tRet) -> bind [] ets' f tRet
                _                   -> error ((show __FILE__)++(show __LINE__)))}
    where bind :: [I.Id] -> [(T, T.T)] -> I.Id -> T.T -> I.IdState (T, T.T)
          bind xs []             f tRet  = return (ExtFunApp f xs, tRet)
          bind xs (eArgt:eArgts) f tRet  = insertLet eArgt
                                                (\x -> bind (xs++[x]) eArgts f tRet)
  S.App e es    -> do{ (etf@(ef',tf'):ets') <- mapM (kNize tEnv) (e:es)
                     ; case tf' of
                          T.Fun _ tRet  -> insertLet etf (\f -> bind [] ets' f tRet)
                          _             -> error ((show __FILE__)++(show __LINE__))}
    where bind :: [I.Id] -> [(T, T.T)] -> I.Id -> T.T -> I.IdState (T, T.T)
          bind xs []             f tRet  = return (App f xs, tRet)
          bind xs (eArgt:eArgts) f tRet  = insertLet eArgt
                                                (\x -> bind (xs++[x]) eArgts f tRet)
  S.Tuple es    -> do{ ets' <- mapM (kNize tEnv) es
                     ; bind [] ets' $ (snd.unzip) ets'}
    where bind :: [I.Id] -> [(T, T.T)] -> [T.T] -> I.IdState (T, T.T)
          bind xs []       ts = return (Tuple xs, T.Tuple ts)
          bind xs (et:ets) ts = insertLet et (\x -> bind (xs++[x]) ets ts)
          
  S.LetTuple xts e1 e2  -> do{ [et1', (e2',t2)] <- mapM (kNize tEnv') [e1,e2]
                             ; insertLet et1' 
                                   (\x -> return (LetTuple xts x e2', t2))}
    where tEnv' = foldl (\env (x,t) -> Mp.insert x t env) tEnv xts
  S.Array e1 e2         -> do{ [et1', et2'@(e2',t2)] <- mapM (kNize tEnv) [e1,e2]
                             ; let name = case t2 of
                                     T.Float    -> "create_float_array"
                                     _          -> "create_array"
                             ; insertLet et1'
                                 (\x -> insertLet et2'
                                        (\y -> 
                                          return (ExtFunApp name [x,y], T.Array t2))) }
  S.Get e1 e2           
    -> do{ [et1'@(_,t1), et2'] <- mapM (kNize tEnv) [e1, e2]
         ; case t1 of
              T.Array t -> insertLet et1' (\x -> insertLet et2'
                                              (\y -> return (Get x y, t)))
              _         -> error (show __FILE__)}
  S.Put e1 e2 e3
    -> do{ [et1', et2', et3'] <- mapM (kNize tEnv) [e1,e2,e3]
         ; insertLet et1'
             (\x -> insertLet et2'
                      (\y -> insertLet et3'
                               (\z -> return (Put x y z, T.Unit))))}

----free variable--------
freeVar :: T -> St.Set I.Id
freeVar exp = case exp of
  Unit          -> St.empty
  Int   i       -> St.empty
  Float f       -> St.empty
  Neg x         -> St.fromList [x]
  Add x1 x2     -> St.fromList [x1, x2]
  Sub x1 x2     -> St.fromList [x1, x2]
  SLL x i       -> St.fromList [x]
  SRA x i       -> St.fromList [x]
  FNeg x        -> St.fromList [x]
  Fabs x        -> St.fromList [x]  
  Sqrt x        -> St.fromList [x]  
  FAdd x1 x2    -> St.fromList [x1, x2]
  FSub x1 x2    -> St.fromList [x1, x2]
  FMul x1 x2    -> St.fromList [x1, x2]
  FDiv x1 x2    -> St.fromList [x1, x2]
  IfEq x1 x2 e1 e2      -> St.unions [(St.fromList [x1, x2]), (freeVar e1), (freeVar e2)]
  IfLe x1 x2 e1 e2      -> St.unions [(St.fromList [x1, x2]), (freeVar e1), (freeVar e2)]
  Var x         -> St.fromList [x]
  Let (x, t) e1 e2 ->
    St.union (freeVar e1) (St.delete x (freeVar e2))
  LetRec Fundef{name=(x,t), args=yts, body=e1} e2 -> 
    St.difference (St.union zs (freeVar e2)) (St.fromList [x]) 
    where zs = St.difference (freeVar e1) (St.fromList $ (fst.unzip) yts)
  App x ys      -> St.fromList (x:ys)
  Tuple xs      -> St.fromList xs
  LetTuple xts y e      
    -> St.insert y $ St.difference (freeVar e) (St.fromList $ (fst.unzip) xts)
  Get x y       -> St.fromList [x,y]
  Put x y z     -> St.fromList [x,y,z]
  ExtFunApp _ xs-> St.fromList xs

-------show instance-------------------
instance Show T where
  show exp = printKNormal exp 0
    
printKNormal :: T -> Int -> String
printKNormal exp dep = 
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
    LetRec (Fundef{name=xt, args=yts, body=e1}) e2
      -> "LetRec: "++(printXT xt)++" args:"++(concatMap printXT yts)++"\n"
         ++(printE e1)++indent++"In\n"++(printE e2)
    App x xs    
        -> "App: "++(show x)++", args: "++(concatMap (\s -> (show s)++", ") xs)++"\n"
    ExtFunApp x xs      
        -> "ExtFunApp: "++(show x)++", args: "++(concatMap (\s -> (show s)++", ") xs)++"\n"
    Tuple xs    -> "Tuple: "++(concatMap (\s -> (show s)++", ") xs)++"\n"
    LetTuple xts x e2  -> "LetTuple: "++(concatMap printXT xts)++" = "
                           ++(show x)++"\n"++indent++"In\n"++(printE e2)
    Get x1 x2   -> "Get: "++(show x1)++", "++(show x2)++"\n"
    Put x1 x2 x3-> "Put: "++(show x1)++", "++(show x2)++", "++(show x3)++"\n"

  )
    where indent = (concat $ take dep (repeat " "))
          printE = \e -> printKNormal e (dep+1)
          printXT (x,t) = "["++x++" ("++(show t)++")] "
    