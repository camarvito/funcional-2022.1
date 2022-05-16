paridade xs 
 | even $ length [x | x <- xs, x] = True 
 | otherwise = False