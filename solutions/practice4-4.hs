main = do
  print $ (\g -> g 1 2) $ \x y -> x + y
