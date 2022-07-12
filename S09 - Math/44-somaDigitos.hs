sdig 0 = 0
sdig a = mod a 10 + sdig (div a 10)
main = do
    a <- readLn :: IO Int
    print $ sdig a