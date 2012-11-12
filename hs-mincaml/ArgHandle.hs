module ArgHandle where

import System.Console.GetOpt
import Control.Monad.Error

data Flag = Verbose
          | Iteration Int
          | InlineSize Int
          | InputFile String
          | Command Int
            deriving (Show)
            
options :: [OptDescr Flag]
options = [ Option []  ["verbose"] (NoArg Verbose) "chatty output on stderr"
          , Option []  ["iter"]    (ReqArg toIter "int") "the num of IterLoop"
          , Option []  ["inline"]  (ReqArg toInli "int") "the threshold of Inlining"
          , Option []  ["file"]    (ReqArg toInpu "name") "the filename to compile"
          , Option []  ["com"]     (ReqArg toCom  "number") "the showTest command"
          ]
  where toIter str = Iteration $ read str
        toInli str = InlineSize $ read str
        toInpu str = InputFile str
        toCom  str = Command $ read str
        
-- return (name, iter, inline, command)
handle :: [String] -> Either String (FilePath, Int, Int, Int)
handle argv =
 (case getOpt Permute options argv of
    (os, _, [])  -> (if name == "" 
                     then throwError $ (usageInfo header options)
                     else return (name, iter, inline, com))
      where (name, iter, inline, com) = foldl (\(n, it, inl, c) flag ->
                                                case flag of
                                                  Verbose           -> (n, it, inl, c)
                                                  Iteration it      -> (n, it, inl, c)
                                                  InlineSize inl    -> (n, it, inl, c)
                                                  InputFile n       -> (n, it, inl, c)
                                                  Command c         -> (n, it, inl, c)
                                              ) ("", 1000, 0, 100) os
    (_, _, errs)  -> throwError $ (usageInfo header options)
 )
   where header = "Usage: ./Main [OPTION...] files..."