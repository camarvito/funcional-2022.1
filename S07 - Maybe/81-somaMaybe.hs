import Data.Maybe
somaMaybe a b
    | isJust a && isJust b = Just (fromJust a + fromJust b)
    | isJust a = a
    | isJust b = b
    | otherwise = Nothing