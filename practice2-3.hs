-- practice2-3.hs
-- author: Seong Yong-ju ( @sei40kr )

data Point = Point Int Int
  | Point3D Int Int Int
  deriving Show

data Rect = Rect Int Int Int Int
  | Rect3D Int Int Int Int Int Int
  deriving Show

contains (Rect x y w h) (Point px py) = contains (Rect3D x y 0 w h 1) (Point3D px py 0)
contains (Rect3D x y z w h d) (Point3D px py pz) =
  x <= px && px < x + w && y <= py && py < y + h && z <= pz && pz < z + d

main = do
  print $ contains (Rect 2 2 3 3) (Point 1 1)
  print $ contains (Rect 2 2 3 3) (Point 2 2)
  print $ contains (Rect 2 2 3 3) (Point 3 3)
  print $ contains (Rect 2 2 3 3) (Point 4 4)
  print $ contains (Rect 2 2 3 3) (Point 5 5)
  print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 1 1 1)
  print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 2 2 2)
  print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 3 3 3)
  print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 4 4 4)
  print $ contains (Rect3D 2 2 2 3 3 3) (Point3D 5 5 5)
