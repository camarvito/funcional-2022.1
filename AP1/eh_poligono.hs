ehPoligono xs = 
    let sideSum = sum xs
        in check_polygon xs (head xs) sideSum
        where 
            check_polygon [] val sideSum = if val >= (sideSum - val) then False else True
            check_polygon (x:xs) val sideSum = if val >= (sideSum - val) then False else check_polygon xs x sideSum
            
            
main :: IO ()
main = do
    xs <- readLn :: IO [Int]
    print $ ehPoligono xs
