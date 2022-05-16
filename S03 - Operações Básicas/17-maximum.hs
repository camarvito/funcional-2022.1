maior [] acc = acc
maior (x:xs) acc
    | x > acc = maior xs x
    | otherwise = maior xs acc