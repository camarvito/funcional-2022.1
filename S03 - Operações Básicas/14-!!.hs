elemento elem xs  
    | elem >= 0 = xs !! elem
    | otherwise = reverse xs !! (elem * (-1))