-- practice4-10.hs
-- author: Seong Yong-ju ( @sei40kr )

reverse'        = foldl (flip (:)) []
maximum' (x:xs) = foldl max x xs
minimum' (x:xs) = foldl min x xs

main = do
  let src = [-5..5]
  print $ reverse' src
  print $ maximum' src
  print $ minimum' src
