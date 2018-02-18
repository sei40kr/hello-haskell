-- practice4-11.hs
-- author: Seong Yong-ju ( @sei40kr )
bswap =
  foldr
    (\x xs ->
       case xs of
         [] -> [x]
         (y:ys)
           | x > y -> y : x : ys
           | otherwise -> x : y : ys)
    []

main = print $ bswap [4, 3, 1, 5, 2]
