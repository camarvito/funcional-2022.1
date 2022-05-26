import Data.Maybe
filterMaybe xs = filter isJust xs
countNothing xs = length $ filter isNothing xs