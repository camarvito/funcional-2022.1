unico1 x xs = isUnico
    where isUnico = length (filter (== x) xs) == 1

unico2 x xs = frequencia2 x xs == 1

frequencia2 x [] = 0
frequencia2 x (y:u) = val + frequencia2 x u 
    where val = if y == x then 1
                else 0