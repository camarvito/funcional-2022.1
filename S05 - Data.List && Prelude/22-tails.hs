tails (x:[]) = [[x], []]
tails xs = xs : tails (tail xs)