filter2 fn [] = []
filter2 fn (x:xs) = if fn x
                    then x : filter2 fn xs
                    else filter2 fn xs