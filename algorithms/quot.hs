quot' :: Int -> Int -> Int
quot' a b
  | a < b = 0
  | otherwise = 1 + quot' (a - b) b
