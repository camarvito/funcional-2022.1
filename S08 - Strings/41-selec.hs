selec :: [Char] -> [Int] -> [Char]
selec a b = [a !! n | n <- b, True]

main = do
    a <- getLine
    b <- readLn :: IO [Int]
    print $ selec a b