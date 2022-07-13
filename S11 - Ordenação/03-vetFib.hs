fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

vetFib num = [fib x | x <- [0..num - 1]]

