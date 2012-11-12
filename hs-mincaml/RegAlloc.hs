{-# LANGUAGE CPP #-}
module RegAlloc where

import qualified Type as T
import qualified IdMod as I
import qualified Asm as A
import qualified Virtual as V

import Control.Monad.State 
import Control.Monad.Error
import qualified Data.Map as Mp
import qualified Data.Set as St
import qualified Debug.Trace as DT
import Control.Monad(when)

type RegEnv = Mp.Map I.Id I.Id
data RegErr = NoReg I.Id T.T
instance Error RegErr where 
  noMsg      = NoReg "dummy" T.Unit
  strMsg str = noMsg
data AllocRes = Spill I.Id --variable name
              | Alloc I.Id --register name
type AllocState = ErrorT RegErr I.IdState 

---MAIN---
regAllocMain :: A.Prog -> I.Counter -> (A.Prog, I.Counter)
regAllocMain prog c = 
  let !_ = DT.trace ("regalloc...") () in  
  (case runState (runErrorT $ regAllocProg prog) c of
      (Right prog', c') -> (prog', c)
      _                 -> error ((show __LINE__)++(show __FILE__)))
                          
---regalloc prog---
regAllocProg :: A.Prog -> AllocState A.Prog
regAllocProg (e, fundefs) = do fundefs' <- mapM h fundefs
                               dummy    <- lift $ I.genTmpId T.Unit
                               (e', _)  <- g (dummy, T.Unit) (A.Ans A.Nop) Mp.empty e
                               return (e', fundefs')

-----register allocation------
g :: (I.Id, T.T) -> A.T -> RegEnv -> A.T -> AllocState (A.T, RegEnv)
g dest cont regEnv e = 
  case e of
    A.Ans exp           -> do (exp', regEnv') <- gRestore dest cont regEnv exp
                              return (exp', regEnv')
    A.Let (x,t) exp e'  
      -> do (when (Mp.member x regEnv) (error (x++(show regEnv)++(show exp)++(show __LINE__)++(show __FILE__)))) --assertion in monad
            let cont' = A.concatLet dest e' cont
            (exp', regEnv1) <- gRestore (x,t) cont' regEnv exp
            (case alloc dest cont' regEnv1 x t of
                Spill y -> do let !_ = DT.trace ("spilling: "++ y) ""
                              let Just r = Mp.lookup y regEnv1
                              (e'', regEnv2) <- g dest cont (myInsert x r $ Mp.delete y regEnv1) e'
                              let save = (case Mp.lookup y regEnv of  -- regEnvなのが割と謎??
                                             Just ry -> A.Save ry y
                                             Nothing -> A.Nop)
                              e''' <- lift $ A.mySeq save (A.concatLet (r, t) exp' e'')
                              return (e''', regEnv2)
                Alloc r -> do (e'', regEnv2) <- g dest cont (myInsert x r regEnv1) e'
                              return (A.concatLet (r, t) exp' e'', regEnv2))
    where myInsert x r regEnv = if A.isReg x 
                                then (if x /= r then error ((show __LINE__)++(show __FILE__)) -- assertion
                                      else regEnv)
                                else Mp.insert x r regEnv
      
gRestore :: (I.Id, T.T) -> A.T -> RegEnv -> A.Exp -> AllocState (A.T, RegEnv)
gRestore dest cont regEnv exp = 
  gErr dest cont regEnv exp
  `catchError` 
  (\(NoReg x t) -> g dest cont regEnv (A.Let (x,t) (A.Restore x) (A.Ans exp)))
  
gErr :: (I.Id, T.T) -> A.T -> RegEnv -> A.Exp -> AllocState (A.T, RegEnv)
gErr dest cont regEnv exp = case exp of
  A.Nop          -> return (A.Ans exp, regEnv)
  A.Set   _      -> return (A.Ans exp, regEnv) 
  A.SetF  _      -> return (A.Ans exp, regEnv) 
  A.SetL  _      -> return (A.Ans exp, regEnv) 
  A.Restore _    -> return (A.Ans exp, regEnv)  
  A.Mov x        -> do{ xr  <- myFind x T.Int regEnv
                      ; return (A.Ans $ A.Mov xr, regEnv)}
  A.Neg x        -> do{ xr  <- myFind x T.Int regEnv
                      ; return (A.Ans $ A.Neg xr, regEnv)}
  A.Add x y'     -> do{ xr  <- myFind x T.Int regEnv 
                      ; yr' <- myFind' y' regEnv 
                      ; return (A.Ans $ A.Add xr yr', regEnv)}
  A.Sub x y'     -> do{ xr  <- myFind x T.Int regEnv 
                      ; yr' <- myFind' y' regEnv 
                      ; return (A.Ans $ A.Sub xr yr', regEnv)} 
  -- A.Mul x y'     -> do{ xr  <- myFind x T.Int regEnv 
  --                     ; yr' <- myFind' y' regEnv 
  --                     ; return (A.Ans $ A.Mul xr yr', regEnv)} 
  -- A.Div x y'     -> do{ xr  <- myFind x T.Int regEnv 
  --                     ; yr' <- myFind' y' regEnv 
  --                     ; return (A.Ans $ A.Div xr yr', regEnv)} 
  A.SLL x i      -> do{ xr  <- myFind x T.Int regEnv 
                      ; return (A.Ans $ A.SLL xr i, regEnv)} 
  A.SRA x i      -> do{ xr  <- myFind x T.Int regEnv 
                      ; return (A.Ans $ A.SRA xr i, regEnv)} 
  A.Ld  x y'     -> do{ xr  <- myFind x T.Int regEnv 
                      ; yr' <- myFind' y' regEnv                                
                      ; return (A.Ans $ A.Ld xr yr', regEnv)}
  A.St  x y z'   -> do{ xr  <- myFind x T.Int regEnv 
                      ; yr  <- myFind y T.Int regEnv               
                      ; zr' <- myFind' z' regEnv                   
                      ; return (A.Ans $ A.St xr yr zr', regEnv)}
  A.FMov x        -> do{ xr  <- myFind x T.Float regEnv
--                       ; when (not $ elem xr A.fRegs) (error (show __FILE__ ++ show __LINE__))
                       ; return (A.Ans $ A.FMov xr, regEnv)}
  A.FNeg x        -> do{ xr  <- myFind x T.Float regEnv
                       ; return (A.Ans $ A.FNeg xr, regEnv)}  
  A.Sqrt x        -> do{ xr  <- myFind x T.Float regEnv
                       ; return (A.Ans $ A.Sqrt xr, regEnv)}                       
  A.FAdd x y     -> do{ xr  <- myFind x T.Float regEnv 
                      ; yr  <- myFind y T.Float regEnv 
                      ; return (A.Ans $ A.FAdd xr yr, regEnv)}
  A.FSub x y     -> do{ xr  <- myFind x T.Float regEnv 
                      ; yr  <- myFind y T.Float regEnv 
                      ; return (A.Ans $ A.FSub xr yr, regEnv)} 
  A.FMul x y     -> do{ xr  <- myFind x T.Float regEnv 
                      ; yr  <- myFind y T.Float regEnv 
                      ; return (A.Ans $ A.FMul xr yr, regEnv)} 
  A.FDiv x y     -> do{ xr  <- myFind x T.Float regEnv 
                      ; yr  <- myFind y T.Float regEnv 
                      ; return (A.Ans $ A.FDiv xr yr, regEnv)} 
  A.LdF  x y'     -> do{ xr  <- myFind x T.Int regEnv 
                       ; yr' <- myFind' y' regEnv                  
                       ; return (A.Ans $ A.LdF xr yr', regEnv)}
  A.StF  x y z'   -> do{ xr  <- myFind x T.Float regEnv 
                       ; yr  <- myFind y T.Int regEnv              
                       ; zr' <- myFind' z' regEnv                    
                       ; return (A.Ans $ A.StF xr yr zr', regEnv)}
  A.IfEq  x y e1 e2 -> do{ xr  <- myFind x T.Int regEnv 
                         ; yr  <- myFind y T.Int regEnv              
                         ; gErrIf dest cont regEnv exp (\e1' e2' -> A.IfEq xr yr e1' e2') e1 e2 }
  A.IfLe  x y e1 e2 -> do{ xr  <- myFind x T.Int regEnv 
                         ; yr  <- myFind y T.Int regEnv              
                         ; gErrIf dest cont regEnv exp (\e1' e2' -> A.IfLe xr yr e1' e2') e1 e2 }
  A.IfFEq  x y e1 e2 -> do{ xr  <- myFind x T.Float regEnv 
                          ; yr  <- myFind y T.Float regEnv              
                          ; gErrIf dest cont regEnv exp (\e1' e2' -> A.IfFEq xr yr e1' e2') e1 e2 }
  A.IfFLe  x y e1 e2 -> do{ xr <- myFind x T.Float regEnv 
                          ; yr <- myFind y T.Float regEnv              
                          ; gErrIf dest cont regEnv exp (\e1' e2' -> A.IfFLe xr yr e1' e2') e1 e2 }
  A.CallCls x ys zs  -> do{ xr <- myFind x T.Int regEnv
                          ; gErrCall dest cont regEnv exp (\ys zs -> A.CallCls xr ys zs) ys zs }
  A.CallDir l ys zs  -> do{ gErrCall dest cont regEnv exp (\ys zs -> A.CallDir l ys zs) ys zs }
  A.Save    x y      -> do{ error ((show __LINE__)++(show __FILE__)) }

-- NoRegを投げる可能性はなさそう??
gErrIf :: (I.Id, T.T) -> A.T -> RegEnv -> A.Exp -> (A.T -> A.T -> A.Exp) 
          -> A.T -> A.T -> AllocState (A.T, RegEnv)
gErrIf dest cont regEnv exp constr e1 e2 =
  do (e1', regEnv1) <- g dest cont regEnv e1
     (e2', regEnv2) <- g dest cont regEnv e2
     -- 条件分岐における二つの命令列に共通するレジスタ割り当てをとる(後続の命令列で使う変数のうち)
     let regEnv' = foldl (\regEnv' x -> 
                           if A.isReg x then regEnv' else
                             if (Mp.member x regEnv1) && (Mp.member x regEnv2) 
                                && (Mp.lookup x regEnv1 == Mp.lookup x regEnv2) 
                             then let Just xr = Mp.lookup x regEnv1 in Mp.insert x xr regEnv' 
                             else regEnv'
                         ) Mp.empty (A.freeVar cont)
     -- そうでない変数は分岐直前にセーブ(x == fst dest は返り値として束縛されているとゆうこと)
     e' <- foldM (\e x -> 
                   if x == fst dest || not (Mp.member x regEnv) || Mp.member x regEnv' 
                   then return e 
                   else do let Just x' = Mp.lookup x regEnv -- 絶対に見つかる(上の条件not mem)
                           e' <- lift $ A.mySeq (A.Save x' x) e
                           return e' 
                 ) (A.Ans (constr e1' e2')) (A.freeVar cont)
     return (e', regEnv')
       
gErrCall :: (I.Id, T.T) -> A.T -> RegEnv -> A.Exp -> ([I.Id] -> [I.Id] -> A.Exp) 
            -> [I.Id] -> [I.Id] -> AllocState (A.T, RegEnv)
gErrCall dest cont regEnv exp constr ys zs = 
  do yrs <- mapM (\y -> myFind y T.Int regEnv) ys       -- NoRegかも
     zrs <- mapM (\z -> myFind z T.Float regEnv) zs     -- NoRegかも
     e' <- foldM (\e x -> 
                   if x == fst dest || not (Mp.member x regEnv) 
                   then return e
                   else do let Just x' = Mp.lookup x regEnv
                           e' <- lift $ A.mySeq (A.Save x' x) e
                           return e'
                 ) (A.Ans (constr yrs zrs)) (A.freeVar cont)
     return (e', Mp.empty)
     
myFind :: I.Id -> T.T -> RegEnv -> AllocState I.Id
myFind x t regEnv = if A.isReg x then return x          -- reg_cl などの予約レジスタ
                    else case Mp.lookup x regEnv of
                      Just xr -> return xr
                      Nothing -> throwError $ NoReg x t -- throwError
                      
myFind' :: A.IdOrIm -> RegEnv -> AllocState A.IdOrIm
myFind' (A.C i) regEnv = return $ A.C i
myFind' (A.V x) regEnv = do xr <- myFind x T.Int regEnv    -- throwError
                            return $ A.V xr
alloc :: (I.Id, T.T) -> A.T -> RegEnv -> I.Id -> T.T -> AllocRes
alloc dest cont regEnv x t = 
  -- let !_ = if x == "w.5140"
  --          then DT.trace ("alloc:"++(show x)++",prefer:"++(show prefer)++",dest:"++(show dest)) ()
  --          else ()
  -- in 
  if t == T.Unit          then Alloc "$g0"             else
    if A.isReg x          then Alloc x                 else
      if allocables /= [] then Alloc (head allocables) else Spill (head spilables)
  where all             = (case t of
                              T.Unit  -> error ((show __LINE__)++(show __FILE__))
                              T.Float -> A.fRegs
                              _       -> A.iRegs)
        free            = A.freeVar cont
        (_, prefer)     = targetE x dest cont
        live            = foldl (\live y -> 
                                  if A.isReg y 
                                  then St.insert y live 
                                  else (case Mp.lookup y regEnv of
                                           Just yr -> St.insert yr live
                                           Nothing -> live)
                                  ) St.empty free
        allocables      = filter (\r -> St.notMember r live) (prefer ++ all)
        spilables       = filter (\y -> 
                                   not (A.isReg y) 
                                   && Mp.member y regEnv 
                                   && (let Just yr = Mp.lookup y regEnv in
                                        elem yr all)
                                 ) (reverse free)

targetE :: I.Id -> (I.Id, T.T) -> A.T -> (Bool, [I.Id])
targetE src dest cont = 
  case cont of
    A.Ans exp           -> targetExp src dest exp
    A.Let xt exp e      -> (if c1 
                            then (c1, rs1)
                            else (c2, rs1 ++ rs2))
      where (c1, rs1) = targetExp src xt exp
            (c2, rs2) = targetE   src dest e
            
targetExp :: I.Id -> (I.Id, T.T) -> A.Exp -> (Bool, [I.Id])
targetExp src (destx, t) exp = 
  case exp of
    A.Mov  x | x == src && A.isReg destx -> (False   , [destx])
    A.FMov x | x == src && A.isReg destx -> (False   , [destx])
    A.IfEq _ _ e1 e2                     -> (c1 && c2, rs1 ++ rs2)
      where (c1, rs1) = targetE src (destx, t) e1
            (c2, rs2) = targetE src (destx, t) e2
    A.IfLe _ _ e1 e2                     -> (c1 && c2, rs1 ++ rs2)
      where (c1, rs1) = targetE src (destx, t) e1
            (c2, rs2) = targetE src (destx, t) e2
    A.IfFEq _ _ e1 e2                     -> (c1 && c2, rs1 ++ rs2)
      where (c1, rs1) = targetE src (destx, t) e1
            (c2, rs2) = targetE src (destx, t) e2
    A.IfFLe _ _ e1 e2                     -> (c1 && c2, rs1 ++ rs2)
      where (c1, rs1) = targetE src (destx, t) e1
            (c2, rs2) = targetE src (destx, t) e2
    A.CallCls x ys zs                     -> (True, targets)
      where yrs     = [r | (y, r)  <- (zip ys A.iRegs),  y == src]
            zrs     = [fr | (z, fr) <- (zip zs A.fRegs), z == src]
            targets = yrs ++ zrs ++ (if x == src then [A.regCl] else [])
    A.CallDir x ys zs                     -> (True, targets)
      where yrs     = [r | (y, r)  <- (zip ys A.iRegs),  y == src]
            zrs     = [fr | (z, fr) <- (zip zs A.fRegs), z == src]
            targets = yrs ++ zrs
    _   -> (False, [])

--- for functions
h :: A.Fundef -> AllocState A.Fundef
h A.Fundef{A.name = I.Label x, A.args = ys, A.fargs = zs, A.body = e, A.ret  = tRet}
  = do retReg <- (case tRet of
                    T.Unit       -> lift $ I.genTmpId T.Unit
                    T.Float      -> return $ head A.fRegs
                    _            -> return $ head A.iRegs)
       (e', regEnv''') <- g (retReg, tRet) (A.Ans (A.Mov retReg)) regEnv'' e
       return $ A.Fundef{A.name = I.Label x, A.args = iArgs, A.fargs = fArgs, A.body = e', A.ret = tRet}
  where regEnv          = Mp.insert x A.regCl Mp.empty
        iArgs           = take (length ys) A.iRegs
        regEnv'         = foldl (\env (y, r) -> Mp.insert y r env) regEnv (zip ys A.iRegs)
        fArgs           = take (length zs) A.fRegs
        regEnv''        = foldl (\env (z, r) -> Mp.insert z r env) regEnv' (zip zs A.fRegs) 
