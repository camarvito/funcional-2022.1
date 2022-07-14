import Data.List
separa1 num 
    | num == 0 = []
    | otherwise = separa1 (num `div` 10) ++ [num `mod` 10]

separa2 = reverse . unfoldr nextDigit
        where nextDigit 0 = Nothing
              nextDigit n = Just (y, x) where (x, y) = quotRem n 10