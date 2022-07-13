inserir x [] = [x]
inserir x xs
    | x < head xs = x:xs
    | otherwise = head xs : inserir x (tail xs)