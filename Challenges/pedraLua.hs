import Control.Monad ( replicateM )

toInt :: String -> Int
toInt x = read x :: Int

processa :: [String] -> String
processa vet = "sem ganhador"

convert vet = [(toInt a, toInt b, i) | ([a, b], i) <- zip (map words vet) [0..], True]

rule (a, b, c) = a >= 10 && b >= 10
players vet = map rule vet


-- main :: IO()
-- main = do
--     size <- readLn :: IO Int
--     vet <- replicateM size getLine -- [String]
--     print $ vet

-- main :: IO ()
-- main = do
--     print $ processa ["8 11", "10 15"] == "1"
--     print $ processa ["9 12", "11 13", "10 11"] == "2"
--     print $ processa ["12 15", "16 14", "10 9"] == "1"
--     print $ processa ["12 15", "20 23", "10 9", "35 35"] == "3"
--     print $ processa ["10 8", "9 13"] == "sem ganhador"
--     print $ processa ["8 9", "12 7"] == "sem ganhador"
--     print $ processa ["10 9", "15 19"] == "1"
--     print $ processa ["9 8", "9 12", "12 15", "18 19"] == "3"