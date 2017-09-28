-- practice9.hs
-- author: Seong Yong-ju ( @sei40kr )

-- Merge sorted arrays by inserting the smallest number in 2 arrays
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
  | x < y = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys

msort [] = []
msort [x] = [x]
msort xs = merge (msort (take h xs)) (msort (drop h xs))
  where
    h = div (length xs) 2

main = do
  print $ msort [4, 6, 9, 8, 3, 5, 1, 7, 2]
