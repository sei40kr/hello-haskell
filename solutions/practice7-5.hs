-- practice7-5.hs
-- author: Seong Yong-ju ( @sei40kr )
main = do
  print $ do
    x <- [1 .. 5]
    y <- [1 .. 5]
    if x + y == 6
      then return (x, y)
      else []
