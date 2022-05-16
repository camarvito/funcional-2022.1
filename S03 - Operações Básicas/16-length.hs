tamanho1 [] = 0
tamanho1 (x:xs) = 1 + tamanho1 xs

tamanho2 xs = foldl (\acc x -> acc + 1) 0 xs

tamanho3 xs = sum $ map geraUm xs
    where geraUm x = 1