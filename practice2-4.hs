-- practice2-4.hs
-- author: Seong Yong-ju ( @sei40kr )

data Point = Point { px :: Int, py :: Int } deriving Show
data Rect = Rect { rx :: Int, ry :: Int, rw :: Int, rh :: Int } deriving Show

contains r p =
  -- Get values with pattern matching.
  -- You can get value by using field as function
  --   e.g. (rx r) <= (px p) && ...
  rx <= px && px < rx + rw &&
  ry <= py && py < ry + rh
  where
    (Point px py) = p
    (Rect rx ry rw rh) = r

main = do
  print $ contains (Rect { rx = 2, ry = 2, rw = 3, rh = 3 }) (Point { px = 1, py = 1 })
  print $ contains (Rect { rx = 2, ry = 2, rw = 3, rh = 3 }) (Point { px = 2, py = 2 })
  print $ contains (Rect { rx = 2, ry = 2, rw = 3, rh = 3 }) (Point { px = 3, py = 3 })
  print $ contains (Rect { rx = 2, ry = 2, rw = 3, rh = 3 }) (Point { px = 4, py = 4 })
  print $ contains (Rect { rx = 2, ry = 2, rw = 3, rh = 3 }) (Point { px = 5, py = 5 })
