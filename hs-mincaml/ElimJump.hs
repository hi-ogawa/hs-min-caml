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
  $ map (\line -> if isJumpOrBranch line && (isJump $ fromJust $ Mp.lookup (getLabel line) mp)
                  then trans mp line
                  else line)
  $ lines contents
  where mp = getLabelMap contents     -- labelとそのlabelが指す命令のmap

trans :: Mp.Map String String -> String -> String
trans mp line =
  let !_ = DT.trace ("elimJump: "++show line) () in  
  (case (!!0) lws of
      "j"       -> "\t"++ "j"    ++"\t"++nextLabel
      "bne"     -> "\t"++ "bne"  ++"\t"++ (!!1) lws ++" "++ (!!2) lws ++" "++nextLabel
      "bnei"    -> "\t"++ "bnei" ++"\t"++ (!!1) lws ++" "++ (!!2) lws ++" "++nextLabel
      "bclf"    -> "\t"++ "bclf" ++"\t"++nextLabel
      _         -> error "assert"
  ) ++ "     ! elimjump"
  where nextLabel = transLabel mp (getLabel line)
        lws       = words line
        
transLabel mp label =
  if isJump nextInst
  then transLabel mp nextLabel
  else label
  where nextInst  = fromJust $ Mp.lookup label mp
        nextLabel = getLabel nextInst
        
getLabelMap :: String -> Mp.Map String String   -- label から それが指す命令 のマップ
getLabelMap contents =
  foldl (\mp ls -> Mp.insert (init $ head.words $ head ls) (fromJust $ find (not.isLabel) ls) mp
        ) Mp.empty
  $ filter (\ls -> isLabel (head ls)) -- labelの行を収集
  $ takeWhile (not.null) 
  $ iterate tail $ lines contents

isLabel :: String -> Bool
isLabel line | words line == [] = False    -- 空行チェック
isLabel line = ':' == (last $ head $ words line)

isJump :: String -> Bool
isJump line | words line == []  = False    -- 空行チェック
isJump line = "j" == (head $ words line)

isJumpOrBranch :: String -> Bool
isJumpOrBranch line | words line == []  = False    -- 空行チェック
isJumpOrBranch line = or $ map (\asm -> asm == (head $ words line)) ["j", "bne", "bnei", "bclf"] 

getLabel line =
  case lws !! 0 of
      "j"      -> lws !! 1
      "bne"    -> lws !! 3
      "bnei"   -> lws !! 3
      "bclf"   -> lws !! 1
  where lws = words line