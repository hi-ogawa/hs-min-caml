module Eval where

import qualified Type as T
import qualified IdMod as I
import qualified Syntax as S

import qualified Data.Map as Mp
import Control.Monad.State
import Control.Monad.Error
import Control.Monad.Writer
import qualified Debug.Trace as DT

data V = VUnit
       | VBool Bool
       | VInt Int
       | VFloat Float
       | VTuple [V]
       | VArray RefN
       | VFunc I.Id [I.Id] S.T ValueEnv
       | VReserved
         deriving (Show,Eq,Ord)
                  
type RefN = Int         
type ValueEnv = Mp.Map I.Id V
type ArrayEnv = Mp.Map RefN [V] 
type OutputLog = String

type EvalState = StateT ArrayEnv (WriterT OutputLog (Either String))
--type EvalState = ErrorT String (State ArrayEnv)

vEnvInit = Mp.insert "print_int" VReserved Mp.empty
aEnvInit = Mp.insert 0 [VUnit] Mp.empty -- 0はdummy

evalMain :: S.T -> Either String OutputLog
evalMain typedExp =
  -- do case runState (runErrorT $ eval vEnvInit typedExp) aEnvInit of
  do case runWriterT (evalStateT (eval vEnvInit typedExp) aEnvInit) of
       Left msg -> Left msg
       Right (val, output) -> Right output
        
genArrayRef :: Int -> V -> EvalState RefN
genArrayRef size initV = do{ (maxRef,_) <- gets Mp.findMax
                           ; modify (Mp.insert (maxRef+1) (take size $ repeat initV))
                           ; return (maxRef+1)}
                         
-- either で out of bounds errorを投げたい                         
getArrayElem :: Int -> RefN -> EvalState V
getArrayElem index ref = do{ Just vs <- gets (Mp.lookup ref)
                           ; if 0 <= index && index < length vs 
                             then return (vs !! index)
                             else throwError $ "EVAL ERROR: out of bounds - index "++(show index)}
                         
updateArray :: Int -> V -> RefN -> EvalState ()
updateArray index elem ref =
  do{ Just vs <- gets (Mp.lookup ref)
    ; if 0 <= index && index < length vs
      then modify (Mp.insert ref ((take index vs)++[elem]++(drop (index+1) vs)))
      else throwError $ "EVAL ERROR: out of bounds - index "++(show index)}
                             
  
eval :: ValueEnv -> S.T -> EvalState V
eval vEnv exp = case exp of
  S.Unit        -> return VUnit
  S.Bool b      -> return $ VBool b
  S.Int i       -> return $ VInt i
  S.Float f     -> return $ VFloat f
  S.Not e       -> do{ (VBool b) <- eval vEnv e; return $ VBool (not b) }
  S.Neg e       -> do{ (VInt i) <- eval vEnv e; return $ VInt (-i) }
  S.FNeg e      -> do{ (VFloat f) <- eval vEnv e; return $ VFloat (-f) }
  S.Add e1 e2   -> do{ [(VInt i1), (VInt i2)] <- mapM (eval vEnv) [e1, e2]
                     ; return $ VInt (i1 + i2)}
  S.Sub e1 e2   -> do{ [(VInt i1), (VInt i2)] <- mapM (eval vEnv) [e1, e2]
                     ; return $ VInt (i1 - i2)}
  -- S.Mul e1 e2   -> do{ [(VInt i1), (VInt i2)] <- mapM (eval vEnv) [e1, e2]
  --                    ; return $ VInt (i1 * i2)}
  -- S.Div e1 e2   -> do{ [(VInt i1), (VInt i2)] <- mapM (eval vEnv) [e1, e2]
  --                    ; if i2 == 0                            
  --                      then throwError "EVAL ERROR: divide by zero"
  --                      else return $ VInt (i1 `div` i2) }
  S.SLL e i     -> do{ VInt i1 <- eval eEnv e1
                     ; return $ VInt (??) }
  S.SRA e i     -> do{ VInt i1 <- eval eEnv e1
                     ; return $ VInt (??) }                   
  S.FAdd e1 e2  -> do{ [(VFloat f1), (VFloat f2)] <- mapM (eval vEnv) [e1, e2]
                     ; return $ VFloat (f1 + f2)}
  S.FSub e1 e2  -> do{ [(VFloat f1), (VFloat f2)] <- mapM (eval vEnv) [e1, e2]
                     ; return $ VFloat (f1 - f2)}
  S.FMul e1 e2  -> do{ [(VFloat f1), (VFloat f2)] <- mapM (eval vEnv) [e1, e2]
                     ; return $ VFloat (f1 * f2)}
  S.FDiv e1 e2  -> do{ [(VFloat f1), (VFloat f2)] <- mapM (eval vEnv) [e1, e2]
                     ; return $ VFloat (f1 / f2)}
  S.Eq e1 e2    -> do{ [v1, v2] <- mapM (eval vEnv) [e1, e2]
                     ; return $ VBool (v1 == v2)}
  S.Le e1 e2    -> do{ [v1, v2] <- mapM (eval vEnv) [e1, e2]
                     ; return $ VBool (v1 <= v2)}
  S.If e1 e2 e3 -> do{ VBool b1 <- eval vEnv e1
                     ; if b1 then (eval vEnv e2 >>= return) else (eval vEnv e3 >>= return)}
  S.Var x       -> do{ let Just v = Mp.lookup x vEnv       -- unbound value は typingで発覚
                     ; return v}
  S.Let (x,_) e1 e2     -> do{ v <- eval vEnv e1
                             ; eval (Mp.insert x v vEnv) e2 >>= return}
  S.LetRec (S.Fundef{S.name=(x,_), S.args=yts, S.body=e1}) e2
    -> do{ eval (Mp.insert x v vEnv) e2 >>= return }
      where v = VFunc x (fst $ unzip yts) e1 vEnv
-- reserved function(for ./test/~.ml) -------------------------------
  S.App (S.Var "print_int") es -> do{ [VInt i] <- mapM (eval vEnv) es
                                    ; tell (show i)
                                    ; return VUnit}
  S.App (S.Var "print_newline") es -> do{ [VUnit] <- mapM (eval vEnv) es
                                        ; tell "\n"
                                        ; return VUnit}                                 
  S.App (S.Var "float_of_int") es -> do{ [VInt f] <- mapM (eval vEnv) es
                                       ; return $ VFloat (fromIntegral f)}    
  S.App (S.Var "int_of_float") es -> do{ [VFloat f] <- mapM (eval vEnv) es
                                       ; return $ VInt (truncate f)}                      
  S.App (S.Var "truncate") es -> do{ [VFloat f] <- mapM (eval vEnv) es
                                    ; return $ VInt (truncate f)}                          
----------------------------------------------------------------------       
  S.App e es    -> do{ vf@(VFunc x ys eBody vEnv') <- eval vEnv e
                     ; vArgs <- mapM (eval vEnv) es
                     ; let tmpEnv = Mp.insert x vf vEnv' -- 環境を一新(クロージャ)
                     ; let newVEnv = foldr (\(k,v) -> Mp.insert k v) tmpEnv (zip ys vArgs)
                     ; eval newVEnv eBody >>= return}
  S.Tuple es    -> do{ mapM (eval vEnv) es >>= return.VTuple }
  S.LetTuple xts e1 e2  
    -> do{ VTuple vs <- eval vEnv e1
         ; let newVEnv = foldr (\(k,v)-> Mp.insert k v) vEnv (zip (fst$unzip xts) vs)
         ; eval newVEnv e2 >>= return}
  S.Array e1 e2 -> do{ VInt size <- eval vEnv e1
                     ; initV <- eval vEnv e2
                     ; newRef <- genArrayRef size initV
                     ; return $ VArray newRef}
  S.Get e1 e2   -> do{ VArray vs <- eval vEnv e1
                     ; VInt index <- eval vEnv e2
                     ; getArrayElem index vs >>= return}
  S.Put e1 e2 e3-> do{ [VArray ref, VInt index, vElem] <- mapM (eval vEnv) [e1,e2,e3]
                     ; updateArray index vElem ref
                     ; return $ VUnit}