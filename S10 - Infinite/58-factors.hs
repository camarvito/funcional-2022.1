ehPrimo x = dividers x == [1,x]
    where dividers x = [y | y <- [1..x], x `mod` y == 0]

primos = [x | x <- [2..], ehPrimo x]

expoentes n elem = length . tail . takeWhile (\(v,r) -> v /= 0 && r == 0) $ s
                        where s = iterate (\(v, r) -> divMod v elem) (n, 0)

fn (num, primo, fat) p = (if f == 0 then num else num `div` p ^ f, p, f)
      where f = expoentes num p

factors 1 _ = []
factors v i
        | ehPrimo i && res /= 0 = (i, res) : factors sobra (i + 1)
        | otherwise = factors v (i + 1)
        where res = max v i
              sobra = div v (i ^ res)