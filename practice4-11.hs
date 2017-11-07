-- practice4-11.hs
-- author: Seong Yong-ju ( @sei40kr )
qsort [] = []
qsort (n:xs) = qsort (filter (n >) xs) ++ [n] ++ qsort (filter (n <=) xs)

main = print $ qsort [4, 6, 9, 8, 3, 5, 1, 7, 2]
