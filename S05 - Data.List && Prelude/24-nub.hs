nub2 [] = []
nub2 [x] = [x]
nub2 (x:xs) =  x : nub2 [y | y<-xs, y/=x]