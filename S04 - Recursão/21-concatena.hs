concatena1 [] ys = ys
concatena1 (x:xs) ys = x : concatena1 xs ys 

concatena2 xs ys = foldr (:) ys xs