ordenada :: Ord a => [a] -> Bool
ordenada [] = True
ordenada (x:xs)
    | xs == [] = True
    | x > head xs = False
    | otherwise = ordenada xs