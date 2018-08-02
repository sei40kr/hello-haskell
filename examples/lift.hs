import           Control.Monad
import           Control.Monad.State

-- lift.hs --- An example of lift

-- author: Seong Yong-ju <sei40kr@gmail.com>

sum' :: [Int] -> IO Int
sum' xs = (`execStateT` 0) $
  forM_ xs $ \i -> do
    modify (+ i)
    v <- get
    lift $ putStrLn $ "+" ++ show i ++ " -> " ++ show v

main :: IO ()
main = print =<< sum' [1 .. 5]
