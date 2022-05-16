
frequencia1 x u = length [y | y <- u, y == x]

frequencia2 x [] = 0
frequencia2 x (y:u) = val + frequencia2 x u 
    where val = if y == x then 1
                else 0