import           Control.Monad
import           Control.Monad.State

-- practice10-3.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

fact :: Integer -> IO Integer
fact x = (`execStateT` 1) $ do
    forM_ [1..x] $ \i -> do
        modify (* i)
        v <- get
        lift $ putStrLn $ "*" ++ show i ++ " -> " ++ show v

main :: IO ()
main = fact 5 >>= print
