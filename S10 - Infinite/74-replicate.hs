myreplicate x y
    | x <= 0 = []
    | otherwise = y : myreplicate (x - 1) y

main = do
    print $ myreplicate 4 0 == [0, 0, 0, 0]
    print $ myreplicate 2 True == [True, True]
    print $ myreplicate 3 "banana" == ["banana", "banana", "banana"]