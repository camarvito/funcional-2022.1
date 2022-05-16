map2 :: (t -> a) -> [t] -> [a]
map2 fn xs = [fn x | x <- xs]

map3 :: (t -> a) -> [t] -> [a]
map3 fn [] = []
map3 fn (x:xs) = fn x : map3 fn xs