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

type VirMonad = G.ReadGlobal I.IdState

---main---------
virtMain :: G.GloTup -> C.Prog -> I.Counter -> (A.Prog, I.Counter)
virtMain gloTup prog c = 
  let !_ = DT.trace ("virtualize...") () in  
  runState (G.runGlobal (cToAsmProg prog) gloTup) c

----virtualize----            
cToAsm :: Typi.TypeEnv -> C.T -> VirMonad A.T
cToAsm tEnv exp = case exp of
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
    -> do [e1',e2'] <- mapM (cToAsm tEnv) [e1,e2]
          let Just t1 = Mp.lookup x1 tEnv
          case t1 of
            T.Bool  -> return $ A.Ans $ A.IfEq  x1 (A.V x2) e1' e2'
            T.Int   -> return $ A.Ans $ A.IfEq  x1 (A.V x2) e1' e2'
            T.Float -> return $ A.Ans $ A.IfFEq x1 x2 e1' e2'
            _       -> error (show __FILE__++show __LINE__)
  C.IfLe x1 x2 e1 e2
    -> do [e1',e2'] <- mapM (cToAsm tEnv) [e1,e2]
          let Just t1 = Mp.lookup x1 tEnv
          case t1 of
            T.Bool  -> return $ A.Ans $ A.IfLe  x1 (A.V x2) e1' e2'
            T.Int   -> return $ A.Ans $ A.IfLe  x1 (A.V x2) e1' e2'
            T.Float -> return $ A.Ans $ A.IfFLe x1 x2 e1' e2'
            _       -> error (show __FILE__++show __LINE__)
  C.Let (x,t) e1 e2
    -> do e1' <- cToAsm tEnv e1
          e2' <- cToAsm (Mp.insert x t tEnv) e2
          -- IF          
          (iffM (G.memDirGlo x)
           -- THEN
           -- global領域に束縛(e1'内でregHpを使ったりしたら怪しい気がする)(assoc後なら大丈夫な気もする)
           -- regHpを0番地に退避し、regHpを一時的にxの存在するGlobal領域に設定する
           -- xにe1'を束縛して、regHpを元に戻し、e2'を評価。
           (do gloX <- G.getOffset x
               let e'           = A.Let (A.regHp, T.Int) (A.Set gloX)
                                  $ A.concatLet (x,t) e1'
                                  $ A.Let (A.regHp, T.Int) (A.Ld A.regZr (A.C 0))
                                  $ e2'
               lift $ A.mySeq (A.St A.regHp A.regZr (A.C 0)) e'
           )
           $
           -- ELSE IF
           iffM (G.memGlo x)
            -- THEN
            -- global領域にpointerを置く
            -- xにe1'を束縛。xをglobal領域にstore。e2'を評価。
           (do gloX <- G.getOffset x
               let st = (case t of
                            T.Unit     -> error (show __FILE__++show __LINE__)
                            T.Float    -> A.StF x A.regZr (A.C gloX)
                            _          -> A.St  x A.regZr (A.C gloX))
               e2'' <- lift $ A.mySeq st e2'
               return $ A.concatLet (x,t) e1' e2''
           )
            -- ELSE
            -- 普通のLet
           (  
             return $ A.concatLet (x,t) e1' e2'
           )
            )
            
  C.Var x
    -> iffM (G.memGlo x)
       -- global変数の参照
       (do gloX <- G.getOffset x
           return $ A.Ans $ A.Set gloX
       )
       -- 普通の参照
       (case Mp.lookup x tEnv of
           Just T.Unit     -> return $ A.Ans $ A.Nop
           Just T.Float    -> return $ A.Ans $ A.FMov x
           Just _          -> return $ A.Ans $ A.Mov  x
           Nothing         -> error  (show __FILE__++show __LINE__)
       )
       
  C.MakeCls (x,t) C.Clos{C.entry=l, C.actualFv=ys} e2   -- fvはglobalになりえない
    -> do e2' <- cToAsm (Mp.insert x t tEnv) e2
          (offset, stFvAndExp) <- foldM subFun (4, e2') ys
          z <- lift $ I.genNewId "lab"
          lastExp <- lift $ A.mySeq (A.St z x (A.C 0)) stFvAndExp
          return $ A.Let (x, t) (A.Mov A.regHp)
                        (A.Let (A.regHp, T.Int) (A.Add A.regHp (A.C offset))
                         (A.Let (z, T.Int) (A.SetL l) lastExp))
      where subFun (o, e) y = (case getType tEnv y of
                                  T.Unit  -> return (o, e)
                                  T.Float -> do e' <- lift $ A.mySeq (A.StF y x (A.C o)) e
                                                return (o+4, e')
                                  _       -> do e' <- lift $ A.mySeq (A.St  y x (A.C o)) e
                                                return (o+4, e'))
  C.AppCls x ys  -> 
    do -- globalなint引数を探す(関数の関数呼び出しは注意)
       let (is, fs) = separate tEnv ys
       is' <- mapM (\x -> iffM (G.memDirGlo x)  -- IF
                          (lift $ I.genNewId x) -- THEN
                          (return x)            -- ELSE
                   ) is
       foldM subFun (A.Ans $ A.CallCls x is' fs) (zip is is')
      where subFun e (old, new) = 
              if old == new
              then return e
              else 
                do gloNew <- G.getOffset old
                   return $ A.Let (new, T.Int) (A.Set gloNew) e
  C.AppDir l ys  ->
    do -- globalなint引数を探す
       let (is, fs) = separate tEnv ys
       is' <- mapM (\x -> iffM (G.memDirGlo x)  -- IF
                          (lift $ I.genNewId x) -- THEN
                          (return x)            -- ELSE
                   ) is
       foldM subFun (A.Ans $ A.CallDir l is' fs) (zip is is')
      where subFun e (old, new) = 
              if old == new
              then return e
              else 
                do gloNew <- G.getOffset old
                   return $ A.Let (new, T.Int) (A.Set gloNew) e
  C.Tuple xs    -- unit型の要素は削除
    -> do y <- lift $ I.genNewId "tup"
          let subFun (o, e) x = case getType tEnv x of
                T.Unit       -> return (o, e)
                T.Float      -> do e' <- lift $ A.mySeq (A.StF x y (A.C o)) e 
                                   return (o+4, e')
                _            -> do e' <- lift $ A.mySeq (A.St  x y (A.C o)) e
                                   return (o+4, e')
          (offset, stAndMov) <- foldM subFun (0, A.Ans $ A.Mov y) xs
          return $ A.Let (y, T.Int) (A.Mov A.regHp)
                   (A.Let (A.regHp, T.Int) (A.Add A.regHp (A.C offset)) stAndMov)
            
  C.LetTuple xts y e2          
    -> do e2' <- cToAsm (foldl (\env (x,t)-> Mp.insert x t env) tEnv xts) e2
          memdir <- G.memDirGlo y
          (if memdir
           then -- globalのyをxtsに束縛
             do gloY <- G.getOffset y
                let e2Fv = C.freeVar e2
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
                
           else -- 普通のLetTuple
             do let e2Fv = C.freeVar e2
                let subFun (o,e) (x,t) = case t of
                      T.Unit         -> return (o,e)    -- unit型の要素は束縛しない
                      T.Float        -> if St.member x e2Fv
                                        then return (o+4,  A.Let (x,t) (A.LdF y (A.C o)) e)
                                        else return (o+4,e)
                      _              -> if St.member x e2Fv
                                        then return (o+4,  A.Let (x,t) (A.Ld  y (A.C o)) e)
                                        else return (o+4,e)
                (_, ldAndExp) <- foldM subFun (0, e2') xts
                return ldAndExp
            )               
  C.Get x y
    -> do memdir <- G.memDirGlo x
          (if memdir 
           then -- global arrayのget
             do gloX <- G.getOffset x
                offset <- lift $ I.genNewId "geto1"
                case getType tEnv x of
                  T.Array T.Unit   -> return $ A.Ans A.Nop
                  T.Array T.Float  -> return $ A.Let (offset,T.Int) (A.SLL y 2)
                                                (A.Ans $ A.LdF offset (A.C gloX))
                  T.Array _        -> return $ A.Let (offset,T.Int) (A.SLL y 2)
                                                (A.Ans $ A.Ld  offset (A.C gloX))
                  _                -> error (show __FILE__++show __LINE__)
                  
           else   -- 普通のget
             do offset <- lift $ I.genNewId "geto2"
                case getType tEnv x of                                                          
                  T.Array T.Unit   -> return $ A.Ans A.Nop                                      
                  T.Array T.Float  -> return $ A.Let (offset,T.Int) (A.SLL y 2)                 
                                                    (A.Ans $ A.LdF x (A.V offset))              
                  T.Array _        -> return $ A.Let (offset,T.Int) (A.SLL y 2)                 
                                                    (A.Ans $ A.Ld  x (A.V offset))              
                  _                -> error (show __FILE__++show __LINE__)
            )
  C.Put x y z
    -> do memdir <- G.memDirGlo x
          (if memdir
           then -- global arrayのput
             do gloX <- G.getOffset x
                offset  <- lift $ I.genNewId "puto1"
                stf     <- lift $ A.mySeq (A.StF z offset (A.C gloX)) (A.Ans A.Nop)  
                st      <- lift $ A.mySeq (A.St  z offset (A.C gloX)) (A.Ans A.Nop)  
                case getType tEnv z of                                        
                  T.Unit  -> return $ A.Ans A.Nop                             
                  T.Float -> return $ A.Let (offset, T.Int) (A.SLL y 2) stf   
                  _       -> return $ A.Let (offset, T.Int) (A.SLL y 2) st
           else -- 普通のget
             do offset  <- lift $ I.genNewId "puto2"                                          
                stf     <- lift $ A.mySeq (A.StF z x (A.V offset)) (A.Ans A.Nop)             
                st      <- lift $ A.mySeq (A.St  z x (A.V offset)) (A.Ans A.Nop)             
                case getType tEnv z of                                                
                  T.Unit  -> return $ A.Ans A.Nop                                     
                  T.Float -> return $ A.Let (offset, T.Int) (A.SLL y 2) stf           
                  _       -> return $ A.Let (offset, T.Int) (A.SLL y 2) st            
            )
----Prog変換--------------------------------------------------
cToAsmProg :: C.Prog -> VirMonad A.Prog
cToAsmProg (e, fundefs) = do fundefs' <- mapM cToAsmFundef fundefs
                             globalts <- G.env  -- 型チェック用
                             e'       <- cToAsm globalts e
                             return (e', fundefs')
  
----Fundef変換------------------------------------------------
cToAsmFundef :: C.Fundef -> VirMonad A.Fundef  
cToAsmFundef C.Fundef{ C.name = (I.Label x, t), C.args = yts 
                     , C.formalFv = zts       , C.body = e }
  = do globalts <- fmap Mp.toList G.env  -- 型チェック用
       fvGlobal <- filterM (\x -> (&&) `liftM` G.memGlo x `ap` (fmap not $ G.memDirGlo x)
                           ) $ St.toList (C.freeVar e)
       fvts     <- mapM (\x -> do (x,) `liftM` G.findGlo x
                        ) fvGlobal
       e' <- cToAsm (Mp.insert x t $ Mp.fromList (yts++zts++globalts)) e
       (_, ldAndExp)  <- foldM subFun1 (4, e') zts        -- load free var
       (_, ldAndExp') <- foldM subFun2 (0, ldAndExp) fvts -- load global var (not dir)
       let (is, fs) = separate (Mp.fromList yts) $ (fst.unzip) yts
       case t of 
         T.Fun _ tRet -> 
           return $ A.Fundef{ A.name = I.Label x,  A.args = is, A.fargs = fs
                            , A.body = ldAndExp', A.ret  = tRet }
         _             -> error (show __FILE__++show __LINE__)
  where subFun1 (o, e) (z, t) = case t of
          T.Unit  -> return (o, e)
          T.Float -> return (o+4, A.Let (z, t) (A.LdF A.regCl (A.C o)) e)
          _       -> return (o+4, A.Let (z, t) (A.Ld  A.regCl (A.C o)) e)
        subFun2 (_, e) (z, t) =
          do gloZ <- G.getOffset z
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
                     Nothing          -> error (show __FILE__++show __LINE__
                                                ++"tEnv:"++(show tEnv)++", x:"++x))

iff :: Bool -> a -> a -> a
iff a b c = if a then b else c

iffM :: Monad m => m Bool -> m a -> m a -> m a
iffM mb ma1 ma2 = iff `liftM` mb `ap` ma1 `ap` ma2
