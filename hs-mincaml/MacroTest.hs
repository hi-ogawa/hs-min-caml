module MacroTest where

import System.Environment(getArgs)

main = do args <- getArgs
          if [] /= args
            then error $ __FILE__
            else print $ __FILE__