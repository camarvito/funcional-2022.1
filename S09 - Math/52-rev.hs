reverseNumber num rev
    | num == 0 = rev
    | otherwise = reverseNumber (num `div` 10) ((rev*10) + (num `rem` 10))

rev num
    | num < 0 = (-1) * rev ((-1) * num)
    | otherwise = reverseNumber num 0
main = do
    a <- readLn :: IO Int
    print $ rev a