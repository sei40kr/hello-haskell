import           Control.Monad

-- practice10-8.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

main :: IO ()
main = do
  print $ liftM2 (,) ([0, 1] :: [Int]) ([0, 2] :: [Int])
  print $ liftM2 (+) ([0, 1] :: [Int]) ([0, 2] :: [Int])
