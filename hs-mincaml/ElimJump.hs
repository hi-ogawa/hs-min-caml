module ElimJump where

import Data.List (find)
import Data.Maybe (fromJust)
import qualified Data.Map as Mp
import qualified Debug.Trace as DT

test :: FilePath -> IO String
test path = do contents <- readFile path
               return $ elimJumpMain contents

elimJumpMain :: String -> String
elimJumpMain contents =
  unlines
  $ map (\line -> if isJump line then trans mp line else line) 
  $ lines contents
  where mp = getLabelInst contents     -- labelとそのlabelが指す命令のmap
        

trans :: Mp.Map String String -> String -> String
trans mp line =
  if isJump nextInst
  then 
    let !_ = DT.trace ("elimJump: "++show line) () in
    trans mp nextInst     -- 再帰的にtrans
  else line ++ "      ! elimjumped"
  where label    = (!!1) $ words line
        nextInst = 
          case Mp.lookup label mp of
            Nothing     -> error (label ++ "\n" ++ show mp)
            Just i      -> i

getLabelInst :: String -> Mp.Map String String
getLabelInst contents =
  foldl (\mp ls -> Mp.insert (init $ head.words $ head ls) (fromJust $ find (not.isLabel) ls) mp
        ) Mp.empty
  $ filter (\ls -> isLabel (head ls)) 
  $ takeWhile (not.null) 
  $ iterate tail $ lines contents

isLabel :: String -> Bool
isLabel line | words line == [] = False    -- 空行チェック
isLabel line = ':' == (last $ head $ words line)

isJump :: String -> Bool
isJump line | words line == []  = False    -- 空行チェック
isJump line = "j" == (head $ words line)
