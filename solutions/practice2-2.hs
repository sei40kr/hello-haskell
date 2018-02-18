-- practice2-2.hs
-- author: Seong Yong-ju ( @sei40kr )

data Rect = Rect Int Int Int Int
data Point = Point Int Int

contains (Rect x y w h) (Point ax ay) = x <= ax && ax < (x + w) && y <= ay && y < (y + h)

main = do
  print $ contains (Rect 2 2 3 3) (Point 1 1)
  print $ contains (Rect 2 2 3 3) (Point 2 2)
  print $ contains (Rect 2 2 3 3) (Point 3 3)
  print $ contains (Rect 2 2 3 3) (Point 4 4)
  print $ contains (Rect 2 2 3 3) (Point 5 5)
