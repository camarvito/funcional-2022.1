-- Mesmo do exercício factors
expoentes n elem = length . tail . takeWhile (\(v,r) -> v /= 0 && r == 0) $ s
                        where s = iterate (\(v, r) -> divMod v elem) (n, 0)
main = do
    print $ expoentes 7 2
    print $ expoentes 4 2
    print $ expoentes 8 2
    print $ expoentes 24 2
    print $ expoentes 1024 2
    print $ expoentes 150 5