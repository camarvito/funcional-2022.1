checkPalindrome s begin end
    | begin == end = True
    | (s !! begin) /= (s !! end) = False
    | begin < end + 1 = checkPalindrome s (begin + 1) (end-1)
    | otherwise = True


isPalind a = 
    if l == 0 then True 
    else checkPalindrome a 0 (l - 1) 
        where l = length a

main = do
    a <- getLine
    print $ isPalind a