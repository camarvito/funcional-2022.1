gerador1_rec num 
    | num == 0 = [0]
    | otherwise = gerador1_rec (num - 1) ++ [num] ++ [-num]

gerador2_rec num
    | num == 0 = []
    | otherwise = gerador2_rec (num - 1) ++ [num] ++ [-num]