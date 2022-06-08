import Data.Text (toUpper)
import Data.Maybe (isJust)

upper :: [Char] -> [Char]
upper str = [u | a <- str, (b, u) <- zip ['a'..'z']['A'..'Z'], a == b]

upper2 str = toUpper str