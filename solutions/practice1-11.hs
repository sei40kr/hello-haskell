main = do
  print [(x, y) | x <- [1..20], y <- [x..20], z <- [y..20], x * x + y * y == z * z]
