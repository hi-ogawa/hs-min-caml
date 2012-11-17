{-# LANGUAGE CPP #-}
module Virtual where

import qualified Type as T
import qualified IdMod as I
import qualified Typing as Typi
import qualified GlobalEnv as G
import qualified Closure as C
import qualified Asm as A

import qualified Data.Map as Mp
import qualified Data.Set as St
import Control.Monad.State
import Control.Exception
import qualified Debug.Trace as DT

---main---------
virtMain :: G.GloTup -> C.Prog -> I.Counter -> (A.Prog, I.Counter)
virtMain gloTup prog c = 
  let !_ = DT.trace ("virtualize...") () in  
  runState (cToAsmProg gloTup prog) c

----virtualize----            
cToAsm :: G.GloTup -> Typi.TypeEnv -> C.T -> I.IdState A.T
cToAsm gloTup tEnv exp = case exp of
  C.Unit                -> return $ A.Ans $ A.Nop
  C.Int i               -> return $ A.Ans $ A.Set    i
  C.Float f             -> return $ A.Ans $ A.SetF   f
  C.Neg x               -> return $ A.Ans $ A.Neg    x
  C.FNeg x              -> return $ A.Ans $ A.FNeg   x
  C.Fabs x              -> return $ A.Ans $ A.Fabs   x  
  C.Sqrt x              -> return $ A.Ans $ A.Sqrt   x  
  C.Add x1 x2           -> return $ A.Ans $ A.Add    x1 (A.V x2)
  C.Sub x1 x2           -> return $ A.Ans $ A.Sub    x1 (A.V x2)
  C.SLL x i             -> return $ A.Ans $ A.SLL x i
  C.SRA x i             -> return $ A.Ans $ A.SRA x i  
  C.FAdd x1 x2          -> return $ A.Ans $ A.FAdd   x1 x2
  C.FSub x1 x2          -> return $ A.Ans $ A.FSub   x1 x2
  C.FMul x1 x2          -> return $ A.Ans $ A.FMul   x1 x2
  C.FDiv x1 x2          -> return $ A.Ans $ A.FDiv   x1 x2
  C.IfEq x1 x2 e1 e2    
    -> do [e1',e2'] <- mapM (cToAsm gloTup tEnv) [e1,e2]
          let Just t1 = Mp.lookup x1 tEnv
          case t1 of
            T.Bool  -> return $ A.Ans $ A.IfEq  x1 (A.V x2) e1' e2'
            T.Int   -> return $ A.Ans $ A.IfEq  x1 (A.V x2) e1' e2'
            T.Float -> return $ A.Ans $ A.IfFEq x1 x2 e1' e2'
            _       -> assert False $ error "dummy"
  C.IfLe x1 x2 e1 e2
    -> do [e1',e2'] <- mapM (cToAsm gloTup tEnv) [e1,e2]
          let Just t1 = Mp.lookup x1 tEnv
          case t1 of
            T.Bool  -> return $ A.Ans $ A.IfLe  x1 (A.V x2) e1' e2'
            T.Int   -> return $ A.Ans $ A.IfLe  x1 (A.V x2) e1' e2'
            T.Float -> return $ A.Ans $ A.IfFLe x1 x2 e1' e2'
            _       -> assert False $ error "dummy"
  -- global領域に束縛(e1'内でregHpを使ったりしたら怪しい気がする)(assoc後なら大丈夫な気もする)
  C.Let (x,t) e1 e2  | Mp.member x (G.dirEnv gloTup)
    -> do e1' <- cToAsm gloTup tEnv e1
          e2' <- cToAsm gloTup (Mp.insert x t tEnv) e2
          -- regHpを0番地に退避し、regHpを一時的にxの存在するGlobal領域に設定する
          -- xにe1'を束縛して、regHpを元に戻し、e2'を評価。
          let Just gloX    = Mp.lookup x (G.offMap gloTup)
          let e'           = A.Let (A.regHp, T.Int) (A.Set gloX)
                             $ A.concatLet (x,t) e1'
                             $ A.Let (A.regHp, T.Int) (A.Ld A.regZr (A.C 0))
                             $ e2'
          A.mySeq (A.St A.regHp A.regZr (A.C 0)) e'
  -- global領域にpointerを置く
  C.Let (x,t) e1 e2  | Mp.member x (G.env gloTup) && t /= T.Unit
    -> do e1' <- cToAsm gloTup tEnv e1
          e2' <- cToAsm gloTup (Mp.insert x t tEnv) e2
          -- xにe1'を束縛。xをglobal領域にstore。e2'を評価。
          e2'' <- A.mySeq st e2'
          return $ A.concatLet (x,t) e1' e2''
      where Just gloX   = Mp.lookup x (G.offMap gloTup)
            st          = (case t of
                              T.Unit     -> error (__FILE__)
                              T.Float    -> A.StF x A.regZr (A.C gloX)
                              _          -> A.St  x A.regZr (A.C gloX))
  -- 普通のLet
  C.Let (x,t) e1 e2
    -> do e1' <- cToAsm gloTup tEnv e1
          e2' <- cToAsm gloTup (Mp.insert x t tEnv) e2
          return $ A.concatLet (x,t) e1' e2'
  -- global変数を参照
  C.Var x       | Mp.member x (G.dirEnv gloTup)
    -> do let Just gloX = Mp.lookup x (G.offMap gloTup) -- gloX は Int
          return $ A.Ans $ A.Set gloX
  -- 普通の参照
  C.Var x 
    -> do let Just t = Mp.lookup x tEnv
          case t of 
            T.Unit      -> return $ A.Ans $ A.Nop
            T.Float     -> return $ A.Ans $ A.FMov x
            _           -> return $ A.Ans $ A.Mov  x
  C.MakeCls (x,t) C.Clos{C.entry=l, C.actualFv=ys} e2   -- fvはglobalになりえない
    -> do e2' <- cToAsm gloTup (Mp.insert x t tEnv) e2
          (offset, stFvAndExp) <- foldM subFun (4, e2') ys
          z <- I.genNewId "lab"
          lastExp <- A.mySeq (A.St z x (A.C 0)) stFvAndExp
          return $ A.Let (x, t) (A.Mov A.regHp)
                        (A.Let (A.regHp, T.Int) (A.Add A.regHp (A.C offset))
                         (A.Let (z, T.Int) (A.SetL l) lastExp))
      where subFun (o, e) y = (case getType tEnv y of
                                  T.Unit  -> return (o, e)
                                  T.Float -> do e' <- A.mySeq (A.StF y x (A.C o)) e
                                                return (o+4, e')
                                  _       -> do e' <- A.mySeq (A.St  y x (A.C o)) e
                                                return (o+4, e'))
  -- とりま
  -- C.AppCls x ys -> return $ A.Ans $ A.CallCls x is fs
  --   where (is,fs) = separate tEnv ys
  -- C.AppDir x ys -> return $ A.Ans $ A.CallDir x is fs
  --   where (is,fs) = separate tEnv ys  
  C.AppCls x ys  -> 
    do -- globalなint引数を探す(関数の関数呼び出しは注意)
       let (is, fs) = separate tEnv ys
       is' <- mapM (\x -> if Mp.member x (G.dirEnv gloTup) 
                          then I.genNewId x
                          else return x) is
       return $ foldl subFun2 (A.Ans $ A.CallCls x is' fs) (zip is is')
      where subFun2 e (old, new) = 
              if old == new
              then e
              else let Just gloNew = Mp.lookup old (G.offMap gloTup) 
                   in  A.Let (new, T.Int) (A.Set gloNew) e
  C.AppDir l ys  ->
    do -- globalなint引数を探す
       let (is, fs) = separate tEnv ys
       is' <- mapM (\x -> if Mp.member x (G.dirEnv gloTup)
                          then I.genNewId x
                          else return x) is
       return $ foldl subFun2 (A.Ans $ A.CallDir l is' fs) (zip is is')
      where subFun2 e (old, new) = 
              if old == new
              then e
              else let Just gloNew = Mp.lookup old (G.offMap gloTup) 
                   in  A.Let (new, T.Int) (A.Set gloNew) e
  C.Tuple xs    -- unit型の要素は削除
    -> do y <- I.genNewId "tup"
          let subFun (o, e) x = case getType tEnv x of
                T.Unit       -> return (o, e)
                T.Float      -> do e' <- A.mySeq (A.StF x y (A.C o)) e 
                                   return (o+4, e')
                _            -> do e' <- A.mySeq (A.St  x y (A.C o)) e
                                   return (o+4, e')
          (offset, stAndMov) <- foldM subFun (0, A.Ans $ A.Mov y) xs
          return $ A.Let (y, T.Int) (A.Mov A.regHp)
                   (A.Let (A.regHp, T.Int) (A.Add A.regHp (A.C offset)) stAndMov)
  -- globalのyをxtsに束縛            
  C.LetTuple xts y e2   | Mp.member y (G.dirEnv gloTup)
    -> do e2' <- cToAsm gloTup (foldl (\env (x,t)-> Mp.insert x t env) tEnv xts) e2
          let Just gloY = Mp.lookup y (G.offMap gloTup) -- gloY は Int
          let e2Fv      = C.freeVar e2
          let subFun (o,e) (x,t) = case t of
                T.Unit         -> return (o,e)    -- unit型の要素は束縛しない
                T.Float        -> if St.member x e2Fv
                                  then return (o+4,  A.Let (x,t) (A.LdF A.regZr (A.C $ gloY + o)) e)
                                  else return (o+4, e)
                _              -> if St.member x e2Fv 
                                  then return (o+4,  A.Let (x,t) (A.Ld  A.regZr (A.C $ gloY + o)) e)
                                  else return (o+4, e)     
          (_, ldAndExp) <- foldM subFun (0, e2') xts
          return ldAndExp
  -- 普通のLetTuple              
  C.LetTuple xts y e2
    -> do e2' <- cToAsm gloTup (foldl (\env (x,t)-> Mp.insert x t env) tEnv xts) e2
          (_, ldAndExp) <- foldM subFun (0, e2') xts
          return ldAndExp
      where e2Fv        = C.freeVar e2
            subFun (o,e) (x,t) = case t of
              T.Unit         -> return (o,e)    -- unit型の要素は束縛しない
              T.Float        -> if St.member x e2Fv
                                then return (o+4,  A.Let (x,t) (A.LdF y (A.C o)) e)
                                else return (o+4,e)
              _              -> if St.member x e2Fv
                                then return (o+4,  A.Let (x,t) (A.Ld  y (A.C o)) e)
                                else return (o+4,e)
  -- global arrayのget
  C.Get x y     | Mp.member x (G.dirEnv gloTup)
    -> do let Just gloX = Mp.lookup x (G.offMap gloTup) -- gloX は Int
          offset  <- I.genNewId "off1"
          case getType tEnv x of
            T.Array T.Unit   -> return $ A.Ans A.Nop
            T.Array T.Float  -> return $ A.Let (offset,T.Int) (A.SLL y 2)
                                              (A.Ans $ A.LdF offset (A.C gloX))
            T.Array _        -> return $ A.Let (offset,T.Int) (A.SLL y 2)
                                              (A.Ans $ A.Ld  offset (A.C gloX))
            _                -> error (show __LINE__)
  -- 普通のget
  C.Get x y     
    -> do offset  <- I.genNewId "off2"
          case getType tEnv x of
            T.Array T.Unit   -> return $ A.Ans A.Nop
            T.Array T.Float  -> return $ A.Let (offset,T.Int) (A.SLL y 2) 
                                              (A.Ans $ A.LdF x (A.V offset))
            T.Array _        -> return $ A.Let (offset,T.Int) (A.SLL y 2) 
                                              (A.Ans $ A.Ld  x (A.V offset))
            _                -> error (show __LINE__)
  -- global arrayのput
  C.Put x y z     | Mp.member x (G.dirEnv gloTup)
    -> do let Just gloX = Mp.lookup x (G.offMap gloTup) -- gloX は Int
          offset  <- I.genNewId "off3"
          stf     <- A.mySeq (A.StF z offset (A.C gloX)) (A.Ans A.Nop)
          st      <- A.mySeq (A.St  z offset (A.C gloX)) (A.Ans A.Nop)
          case getType tEnv z of
            T.Unit  -> return $ A.Ans A.Nop
            T.Float -> return $ A.Let (offset, T.Int) (A.SLL y 2) stf
            _       -> return $ A.Let (offset, T.Int) (A.SLL y 2) st
  -- 普通のget
  C.Put x y z   
    -> do offset  <- I.genNewId "off4"
          stf     <- A.mySeq (A.StF z x (A.V offset)) (A.Ans A.Nop)
          st      <- A.mySeq (A.St  z x (A.V offset)) (A.Ans A.Nop)
          case getType tEnv z of
            T.Unit  -> return $ A.Ans A.Nop
            T.Float -> return $ A.Let (offset, T.Int) (A.SLL y 2) stf
            _       -> return $ A.Let (offset, T.Int) (A.SLL y 2) st            
                       


----Prog変換--------------------------------------------------
cToAsmProg :: G.GloTup -> C.Prog -> I.IdState A.Prog
cToAsmProg gloTup (e, fundefs) = do fundefs' <- mapM (cToAsmFundef gloTup) fundefs
                                    e'       <- cToAsm gloTup (Mp.empty) e
                                    return (e', fundefs')
  
----Fundef変換------------------------------------------------
cToAsmFundef :: G.GloTup -> C.Fundef -> I.IdState A.Fundef  
cToAsmFundef gloTup C.Fundef{ C.name = (I.Label x, t), C.args = yts 
                            , C.formalFv = zts       , C.body = e }
  = do e' <- cToAsm gloTup (Mp.insert x t $ Mp.fromList (yts++zts++globalts)) e
       (_, ldAndExp)  <- foldM subFun1 (4, e') zts        -- load free   var
       (_, ldAndExp') <- foldM subFun2 (0, ldAndExp) fvts --load global var(not dir)
       let (is, fs) = separate (Mp.fromList yts) $ (fst.unzip) yts
       case t of 
         T.Fun _ tRet -> 
           return $ A.Fundef{ A.name = I.Label x,  A.args = is, A.fargs = fs
                            , A.body = ldAndExp', A.ret  = tRet }
         _             -> assert False $ error "dummy"
  where globalts        = Mp.toList $ G.env gloTup      -- 型チェック用
        fvGlobal        = filter (\x -> Mp.member x (G.env gloTup)
                                        && (not $ Mp.member x (G.dirEnv gloTup))
                                 ) $ St.toList (C.freeVar e)
        fvts            = map (\x -> let Just t = Mp.lookup x (G.env gloTup) in (x, t)
                              ) fvGlobal
        subFun1 (o, e) (z, t) = case t of
          T.Unit  -> return (o, e)
          T.Float -> return (o+4, A.Let (z, t) (A.LdF A.regCl (A.C o)) e)
          _       -> return (o+4, A.Let (z, t) (A.Ld  A.regCl (A.C o)) e)
        subFun2 (_, e) (z, t) =
          let Just gloZ = Mp.lookup z (G.offMap gloTup) in
          return (0, A.Let (z, t) (A.Ld A.regZr (A.C gloZ)) e)
                                    
           
----汎用関数----------------------------------------------------
separate :: Typi.TypeEnv -> [I.Id] -> ([I.Id], [I.Id])
separate tEnv xs = foldl subFun ([], []) xs
  where subFun (is,fs) x = (case getType tEnv x of
                               T.Unit  -> (is, fs)
                               T.Float -> (is, fs++[x])
                               _       -> (is++[x], fs))
getType :: Typi.TypeEnv -> I.Id -> T.T
getType tEnv x = (case Mp.lookup x tEnv of
                     Just t           -> t
                     Nothing          -> error ("tEnv:"++(show tEnv)++", x:"++x))
