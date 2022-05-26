ehPrimo x = dividers x == [1,x]
    where dividers x = [y | y <- [1..x], x `mod` y == 0]

