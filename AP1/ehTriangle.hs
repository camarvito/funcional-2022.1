ehTriangle x y z
    | x >= y + z = False
    | y >= z + x = False
    | z >= x + y = False
    | otherwise = True 
    
main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ ehTriangle a b c