-- practice8.hs
-- author: Seong Yong-ju ( @sei40kr )

bsort [] = []
bsort [x] = [x]
bsort (a:b:xs) = bsort (init xs') ++ [last xs']
  where
    (a', b') = if a <= b then (a, b) else (b, a)
    xs' = a':bsort (b':xs)


main :: IO ()
main = do
  print $ bsort [4, 3, 1, 5, 2]
  print $ bsort [5, 4, 3, 2, 1]
  print $ bsort [4, 6, 9, 8, 3, 5, 1, 7, 2]
