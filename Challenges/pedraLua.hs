import Control.Monad ( replicateM )

toInt x = read x :: Int

convert vet = [(i, toInt a, toInt b) | ([a, b], i) <- zip (map words vet) [0..]]

rule (a, b, c) = b >= 10 && c >= 10

players :: [(Int, Int, Int)] -> [(Int, Int, Int)]
players = filter rule

diff :: Num a => (a, a) -> a
diff (x, y) = abs (x - y)

clash :: (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int)
clash (a, b, c) (a', b', c')
    | diff (b, c) < diff (b', c') = (a, b, c)
    | otherwise = (a', b', c')


fst3 :: (a, b, c) -> a
fst3 (x, _, _) = x

getWinner :: [(Int, Int, Int)] -> Int
getWinner xs
    | vet == [] = -1
    | otherwise = fst3 $ foldl1 clash vet
        where vet = players xs

processa xs
    | winner == -1 = "sem ganhador"
    | otherwise = show winner
    where winner = getWinner $ players $ convert xs

main :: IO ()
main = do
    print $ processa ["8 11", "10 15"] == "1"
    print $ processa ["9 12", "11 13", "10 11"] == "2"
    print $ processa ["12 15", "16 14", "10 9"] == "1"
    print $ processa ["12 15", "20 23", "10 9", "35 35"] == "3"
    print $ processa ["10 8", "9 13"] == "sem ganhador"
    print $ processa ["8 9", "12 7"] == "sem ganhador"
    print $ processa ["10 9", "15 19"] == "1"
    print $ processa ["9 8", "9 12", "12 15", "18 19"] == "3"