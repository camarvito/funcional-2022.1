pertence1 e xs = elem e xs

pertence2 a [] = False
pertence2 a (x:xs) = 
    if a == x then True
    else pertence2 a xs