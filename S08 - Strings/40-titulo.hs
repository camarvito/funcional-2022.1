import Data.Char
import Data.List

uppercaseInitial :: String -> String
uppercaseInitial [] = []
uppercaseInitial (head:tail) = toUpper head : lowered tail
  where
    lowered [] = []
    lowered (head:tail) = toLower head : lowered tail

titulo a = unwords [uppercaseInitial w | w <- words a]

main = do
    a <- getLine
    print $ titulo a