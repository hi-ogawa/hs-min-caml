module Typing where


import qualified Type as T
import qualified IdMod as I
import qualified Syntax as S

import qualified Data.Map as Mp
import qualified Data.Set as St
import Control.Monad.State
import Control.Monad.Error
import qualified Debug.Trace as DT

type TypeEnv = Mp.Map I.Id T.T -- 型環境
type Constraints = [(T.T, T.T)] -- 型に関する制約
type Dainyu = Mp.Map T.TypeN T.T -- 型変数から具体的な型へのマップ

-- gatherするときのState諸々(T.TypeNはParserのlastStateを持ってくる)
type TypingState = ErrorT String (State (Constraints, T.TypeN))

-- 推論されない外部関数は事前登録
tEnvInit = foldr (\(x, t) mp -> Mp.insert x t mp) Mp.empty extFunList
extFunList = [("print_char",    (T.Fun [T.Int] T.Unit))
             ,("input_char",    (T.Fun [T.Unit] T.Int))
             ,("float_of_int",  (T.Fun [T.Int] T.Float))
             ,("int_of_float",  (T.Fun [T.Float] T.Int))              
             ,("truncate",      (T.Fun [T.Float] T.Int))
             ,("floor",         (T.Fun [T.Float] T.Float))              
             ,("sqrt",          (T.Fun [T.Float] T.Float))]

typing :: S.T -> T.TypeN -> Either String (T.T, S.T)
typing parsedExp lastN = 
  do let !_ = DT.trace ("typing...") () 
     case runState (runErrorT $ gatherC tEnvInit parsedExp) ([], lastN) of
       (Left msg, _ )                   -> Left msg
       (Right ty, (cons, lastN'))    -> 
         do{ dain <- unify cons
           ; let ty' = inferType dain ty
           ; let typedExp = inferExp dain parsedExp
           ; if ty' /= T.Unit
             then throwError $ "TYPE ERROR: toplevel must be UNIT, but inferred: "++(show ty')
             else return (ty', typedExp)}
  
----------------ひたすらgather(制約集め)----------------------------
gatherC :: TypeEnv -> S.T -> TypingState T.T
gatherC tEnv exp =
  case exp of
    S.Unit      -> return T.Unit
    S.Bool _    -> return T.Bool
    S.Int _     -> return T.Int
    S.Float _   -> return T.Float
    S.Not e     -> do{ t <- gatherC tEnv e; insertC (t, T.Bool); return T.Bool }
    S.Neg e     -> do{ t <- gatherC tEnv e; insertC (t, T.Int); return T.Int }
    S.FNeg e    -> do{ t <- gatherC tEnv e; insertC (t, T.Float); return T.Float }
    S.Fabs e    -> do{ t <- gatherC tEnv e; insertC (t, T.Float); return T.Float }
    S.Sqrt e    -> do{ t <- gatherC tEnv e; insertC (t, T.Float); return T.Float }
    S.Add e1 e2 -> gatherDualOp tEnv e1 e2 T.Int
    S.Sub e1 e2 -> gatherDualOp tEnv e1 e2 T.Int
    S.SLL e _   -> do{ t <- gatherC tEnv e; insertC (t, T.Int); return T.Int }
    S.SRA e _   -> do{ t <- gatherC tEnv e; insertC (t, T.Int); return T.Int }
    S.FAdd e1 e2        -> gatherDualOp tEnv e1 e2 T.Float
    S.FSub e1 e2        -> gatherDualOp tEnv e1 e2 T.Float
    S.FMul e1 e2        -> gatherDualOp tEnv e1 e2 T.Float
    S.FDiv e1 e2        -> gatherDualOp tEnv e1 e2 T.Float
    S.Eq e1 e2          -> gatherCmp tEnv e1 e2 
    S.Le e1 e2          -> gatherCmp tEnv e1 e2    
    S.If e1 e2 e3       -> gatherIf tEnv e1 e2 e3
    S.Var id            -> gatherVar tEnv id          -- error if not bounded id
    S.Let xt e1 e2      -> gatherLet tEnv xt e1 e2
    S.LetRec (S.Fundef {S.name=xt, S.args=yst, S.body=e1}) e2 ->gatherLetRec tEnv xt yst e1 e2
    S.App e es          -> gatherApp tEnv e es
    S.Tuple es          -> gatherTuple tEnv es
    S.LetTuple xts e1 e2-> gatherLetTuple tEnv xts e1 e2
    S.Array e1 e2       -> gatherArray tEnv e1 e2
    S.Get e1 e2         -> gatherGet tEnv e1 e2
    S.Put e1 e2 e3      -> gatherPut tEnv e1 e2 e3

insertC :: (T.T, T.T) -> TypingState ()
insertC p = do{ (c,i) <- get; put (p:c, i)}
genTypeVar :: TypingState T.TypeN
genTypeVar = do{ (c,i) <- get; put (c,i+1); return $ i+1 }
  

gatherDualOp tEnv e1 e2 ty =
  do [t1,t2] <- mapM (gatherC tEnv) [e1,e2]
     mapM_ insertC [(t1,ty), (t2,ty)]
     return ty
     
-- 実はザルな制約(e1,e2の型が同じなら通ってしまう)
gatherCmp tEnv e1 e2 = do [t1,t2] <- mapM (gatherC tEnv) [e1,e2]                        
                          insertC (t1,t2)
                          return T.Bool
                      
gatherIf tEnv e1 e2 e3 = do [t1,t2,t3] <- mapM (gatherC tEnv) [e1,e2,e3]          
                            mapM_ insertC [(t1,T.Bool),(t2,t3)]
                            return t2
                                      
gatherVar tEnv id = (case Mp.lookup id tEnv of
                        Just ty -> return ty
                        Nothing -> throwError ("ERROR: Unbound variable "++id))
                    
gatherLet tEnv (x,t) e1 e2 = do t1 <- gatherC tEnv e1
                                insertC (t1,t)
                                gatherC (Mp.insert x t tEnv) e2 >>= return

gatherLetRec tEnv (x,t) yts e1 e2 = 
  do let tmp = foldl (\env (y, t) -> Mp.insert y t env) tEnv yts        -- 型環境に追加
     t1 <- gatherC (Mp.insert x t tmp) e1                        --返り値の型推論
     insertC (t, T.Fun (snd $ unzip yts) t1)
     gatherC (Mp.insert x t tEnv) e2 >>= return         -- e2の型推論ではytsは無視
                     
gatherApp tEnv e es = do (t:ts) <- mapM (gatherC tEnv) (e:es)
                         newRet <- fmap T.Var genTypeVar     -- 関数の返り値を型変数として生成
                         insertC (T.Fun ts newRet, t)
                         return newRet
                    
gatherTuple tEnv es = mapM (gatherC tEnv) es >>= return.T.Tuple
                    
gatherLetTuple tEnv xts e1 e2 = do t1 <- gatherC tEnv e1
                                   insertC (T.Tuple (snd$unzip xts), t1)
                                   let tEnv' = foldr (\(x, t) -> Mp.insert x t) tEnv xts
                                   gatherC tEnv' e2 >>= return
                              
gatherArray tEnv e1 e2 = do t1 <- gatherC tEnv e1         -- size
                            t2 <- gatherC tEnv e2         -- init elem
                            insertC (T.Int, t1)
                            return $ T.Array t2
                       
gatherGet tEnv e1 e2 = do t1 <- gatherC tEnv e1   -- array
                          t2 <- gatherC tEnv e2   -- index
                          newT <- fmap T.Var genTypeVar         -- elem type
                          insertC (t2, T.Int)
                          insertC (t1, T.Array newT)
                          return newT
                     
gatherPut tEnv e1 e2 e3 = do t1 <- gatherC tEnv e1 -- array                     
                             t2 <- gatherC tEnv e2 -- index
                             t3 <- gatherC tEnv e3 -- put elem
                             insertC (t2, T.Int)
                             insertC (t1, T.Array t3)
                             return T.Unit
                        
-----------unify(制約の解決)------------------------------                        
unify :: Constraints -> Either String Dainyu
unify []                = return Mp.empty
unify ((t1,t2):set)     = 
  case (t1,t2) of
      (T.Fun tArg1 tRet1, T.Fun tArg2 tRet2)
        -> if length tArg1 /= length tArg2
           then throwError ("TYPE ERROR: function argSize is unmatched")
           else unify $ foldr (:) set ((tRet1, tRet2):(zip tArg1 tArg2))
      (T.Tuple ts1, T.Tuple ts2)
        -> if length ts1 /= length ts2
           then throwError ("TYPE ERROR: tuple size is unmatched")
           else unify $ foldr (:) set (zip ts1 ts2)
      (T.Array t1, T.Array t2)
        -> unify $ (t1, t2):set
      (T.Var n1, T.Var n2) | n1 == n2
        -> unify set
      (T.Var n, t)
        -> if checkRecType n t 
           then throwError ("TYPE ERROR: cannot construct the infinite type T.Var "++(show n)++", t "
                            ++(show t))
           else unify (substC n t set) >>= return.(Mp.insert n t)
      (t, T.Var n)
        -> if checkRecType n t 
           then throwError ("TYPE ERROR: cannot construct the infinite type T.Var "++(show n)++", t "
                            ++(show t))
           else unify (substC n t set) >>= return.(Mp.insert n t)
      _ | t1 == t2 -> unify set
      _ | t1 /= t2 -> throwError ("TYPE ERROR: unify error: "++(show t1)++" /= "++(show t2))

  
--制約集合中の型変数nをtに置き換える
substC :: T.TypeN -> T.T -> Constraints -> Constraints
substC n t set = map (\(t1, t2) -> (substType n t t1, substType n t t2)) set

--t2中のnをt1に置き換えたものを返す
substType :: T.TypeN -> T.T -> T.T -> T.T
substType n t1 t2 = case t2 of
  T.Fun tArgs tRet -> T.Fun (map (\t -> substType n t1 t) tArgs) (substType n t1 tRet)
  T.Tuple ts -> T.Tuple (map (\t -> substType n t1 t) ts)
  T.Array t -> T.Array $ substType n t1 t
  T.Var n' | n == n' -> t1
  T.Var n' | n /= n' -> T.Var n'
  _ -> t2
  
--型がrecursiveになってないかのチェック
checkRecType :: T.TypeN -> T.T -> Bool
checkRecType n t = 
  case t of
    T.Fun tArgs tRet -> (or $ map (checkRecType n) tArgs) || (checkRecType n tRet)
    T.Tuple ts -> or $ map (checkRecType n) ts
    T.Array t -> checkRecType n t
    T.Var n' | n' == n -> True
    _ -> False

-------expの型を導出(dainyuから)
inferExp :: Dainyu -> S.T -> S.T
inferExp dain exp = case exp of
  S.Unit        -> S.Unit
  S.Bool b      -> S.Bool b
  S.Int i       -> S.Int i
  S.Float f     -> S.Float f
  S.Not e       -> S.Not (inferE' e)
  S.Neg e       -> S.Neg (inferE' e)
  S.FNeg e      -> S.FNeg (inferE' e)
  S.Fabs e      -> S.Fabs (inferE' e)  
  S.Sqrt e      -> S.Sqrt (inferE' e)  
  S.Add e1 e2   -> S.Add (inferE' e1) (inferE' e2)
  S.Sub e1 e2   -> S.Sub (inferE' e1) (inferE' e2)
  S.SLL e i     -> S.SLL (inferE' e) i
  S.SRA e i     -> S.SRA (inferE' e) i
  S.FAdd e1 e2	-> S.FAdd (inferE' e1) (inferE' e2)
  S.FSub e1 e2	-> S.FSub (inferE' e1) (inferE' e2)
  S.FMul e1 e2	-> S.FMul (inferE' e1) (inferE' e2)
  S.FDiv e1 e2	-> S.FDiv (inferE' e1) (inferE' e2)
  S.Eq e1 e2    -> S.Eq (inferE' e1) (inferE' e2)
  S.Le e1 e2    -> S.Le (inferE' e1) (inferE' e2)
  S.If e1 e2 e3 -> S.If (inferE' e1) (inferE' e2) (inferE' e3)
  S.Var x       -> S.Var x
  S.Let (x,t) e1 e2     ->  S.Let (x, (inferT' t)) (inferE' e1) (inferE' e2)
  S.LetRec (S.Fundef{S.name=(x,t), S.args=yts, S.body=e1}) e2 
    -> S.LetRec (S.Fundef {S.name=(x, (inferT' t)), S.args=args', S.body=e1'}) e2'
      where args' = inferTMap yts
            e1'   = inferE' e1
            e2'   = inferE' e2
  S.App e es    -> S.App (inferE' e) (map inferE' es)
  S.Tuple es    -> S.Tuple $ map inferE' es
  S.LetTuple xts e1 e2  -> S.LetTuple (inferTMap xts) (inferE' e1) (inferE' e2)
  S.Array e1 e2 -> S.Array (inferE' e1) (inferE' e2)
  S.Get e1 e2   -> S.Get (inferE' e1) (inferE' e2)
  S.Put e1 e2 e3        -> S.Put (inferE' e1) (inferE' e2) (inferE' e3)
  where inferE' = inferExp dain --書くのを短縮
        inferT' = inferType dain
        inferTMap = map (\(x,t) -> (x, (inferT' t)))
       
inferType :: Dainyu -> T.T -> T.T
inferType dain t =
  case t of
    T.Fun ts t  -> T.Fun (map (inferType dain) ts) (inferType dain t)
    T.Tuple ts  -> T.Tuple $ map (inferType dain) ts
    T.Array t   -> T.Array (inferType dain t)
    T.Var n     -> (case Mp.lookup n dain of
                   Just t -> inferType dain t
                   Nothing -> T.Int)    -- 型が定まらなければIntとみなす
    _           -> t