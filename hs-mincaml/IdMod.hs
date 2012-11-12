{-# LANGUAGE CPP #-}
module IdMod where

import qualified Type as T

import Control.Monad.State
import Control.Exception(assert)

type Id = String
data Label = Label String deriving (Show, Eq)
--変数名を一意にカウント
type Counter = Int
type IdState = State Counter

--id => newId (Alphaとかで使う)
genNewId :: Id -> IdState Id
genNewId x = do{ counter <- get; put (counter+1)
               ; return $ x++"."++(show (counter+1))}
              

--type => newId (KNormalとかで使う)(globalでない変数)
genTmpId :: T.T -> IdState Id
genTmpId t = do{ counter <- get; put (counter+1)
               ; return $ (showType t)++"."++(show (counter+1))}
             
showType :: T.T -> String
showType t = case t of
  T.Unit          -> "u"
  T.Bool          -> "b"
  T.Int           -> "i"
  T.Float         -> "fl"
  T.Fun _ _       -> "fu"
  T.Tuple _       -> "t"
  T.Array _       -> "a"
  _               -> error (show __FILE__)
