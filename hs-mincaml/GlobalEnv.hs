{-# LANGUAGE CPP #-}
module GlobalEnv where

import qualified Type as T
import qualified IdMod as I
import qualified KNormal as K

import Data.Char(isLower)
import Control.Monad.State
import Control.Monad.Reader
import Data.Maybe(fromJust)
import qualified Data.Map as Mp
import qualified Debug.Trace as DT

type GloTup     = (GloEnv, GloDirEnv, GloOffMap, GloOffset)
type GloEnv     = Mp.Map I.Id T.T
type GloDirEnv  = Mp.Map I.Id T.T
type GloOffMap  = Mp.Map I.Id Int
type GloOffset  = Int

type GloState = State (GloEnv, GloDirEnv, GloOffMap, GloOffset)

type IntEnv = Mp.Map I.Id K.T

-- MAIN
globalMain :: K.T -> (GloEnv, GloDirEnv, GloOffMap, GloOffset)
globalMain exp = 
  let !_ = DT.trace ("gathering global tuple or array ...") () in
  snd $ runState (g Mp.empty exp) (Mp.empty, Mp.empty, Mp.empty, 4) --0番地はregHp保存用


-- グローバルなタプルor配列を探す旅     -- assoc後にやるべき!!!(size分かる。arrayが入れ子にならない)
g :: IntEnv -> K.T -> GloState ()
g iEnv exp = case exp of
  K.Let (x,t) e1 e2     ->
    do o <- gets (\(_,_,_,o) -> o)
       (if isGlobalId x && tupleOrArray t
        then  -- ここに来るのは tuple, extfunapp, app, get, var
          (case getAns e1 of
              K.Tuple xs    -> do let !_ = DT.trace ("global tuple: "++(show x)++", o:"++(show o)) ()
                                  modiEnv x t
                                  modiDirEnv x t
                                  modiOff x (length xs)
              K.ExtFunApp f [s,e]  -- sizeが分からなかったら、ポインタ用のエントリーだけ
                | memInt iEnv s && (f == "create_array"||f == "create_float_array") ->
                  do let !_ = DT.trace ("global array: "++(show x)++", o:"++(show o)) ()
                     modiEnv x t
                     modiDirEnv x t
                     let Just (K.Int i) = Mp.lookup s iEnv
                     modiOff x (max 1 i)
              _             -> do let !_ = DT.trace ("global var: "++(show x)++", o:"++(show o)) ()
                                  modiEnv x t
                                  modiOff x 1)
        else return ())
       g (Mp.insert x e1 iEnv) e2
  K.LetRec _ e2         ->
    g iEnv e2
  K.LetTuple xts y e    ->      -- LetTupleは無視(solverはやってたけど)
    g iEnv e
  _     -> return ()

isGlobalId :: I.Id -> Bool
isGlobalId x = isLower (head x)

tupleOrArray :: T.T -> Bool
tupleOrArray t = case t of
  T.Array _     -> True
  T.Tuple _     -> True
  _             -> False

getAns :: K.T -> K.T
getAns exp = case exp of
  K.Let _ _ e           -> e
  K.LetRec _ e          -> e
  K.LetTuple _ _ e      -> e
  e                     -> e
  
memInt :: IntEnv -> I.Id -> Bool
memInt intEnv x = 
  case Mp.lookup x intEnv of
    Just (K.Int _)      -> True
    _                   -> False
  
modiEnv :: I.Id -> T.T -> GloState ()
modiEnv x t = do (a,b,c,d) <- get
                 let a' = Mp.insert x t a
                 put (a', b,c,d)

modiDirEnv :: I.Id -> T.T -> GloState ()
modiDirEnv x t = do (a,b,c,d) <- get
                    let b' = Mp.insert x t b
                    put (a,b', c,d)

modiOff :: I.Id -> Int -> GloState ()
modiOff x s = do (a, b, map, offset) <- get
                 let map'       = Mp.insert x offset map
                 let offset'    = offset + (s * 4)      -- word access
                 put (a, b, map', offset')
                 

---------------------------------------------
--- reader global module --------------------
---------------------------------------------

type ReadGlobal = ReaderT GloTup
runGlobal = runReaderT

env :: (Monad m) => ReadGlobal m GloEnv
env    = asks (\(a,b,c,d) -> a)
dirEnv :: (Monad m) => ReadGlobal m GloDirEnv
dirEnv = asks (\(a,b,c,d) -> b)
offMap :: (Monad m) => ReadGlobal m GloOffMap
offMap = asks (\(a,b,c,d) -> c)
offset :: (Monad m) => ReadGlobal m GloOffset
offset = asks (\(a,b,c,d) -> d)

memGlo :: (Monad m) => I.Id -> ReadGlobal m Bool
memGlo x = asks (\(a,_,_,_) -> Mp.member x a)

findGlo :: (Monad m) => I.Id -> ReadGlobal m T.T
findGlo x = asks (\(a,_,_,_) -> fromJust $ Mp.lookup x a)

memDirGlo :: (Monad m) => I.Id -> ReadGlobal m Bool
memDirGlo x = asks (\(_,b,_,_) -> Mp.member x b)

findDirGlo :: (Monad m) => I.Id -> ReadGlobal m T.T
findDirGlo x = asks (\(_,b,_,_) -> fromJust $ Mp.lookup x b)

getOffset :: (Monad m) => I.Id -> ReadGlobal m Int
getOffset x = asks (\(_,_,c,_) -> fromJust $ Mp.lookup x c)
