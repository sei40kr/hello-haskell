-- practice9-4.hs

-- author: Seong Yong-ju ( @sei40kr )

import           Control.Monad
import           Control.Monad.State

fib :: Int -> Int
fib x =
  (`evalState` (0, 1)) $ do
    replicateM_ (x - 1) $ do
      (a, b) <- get
      put (b, a + b)
    v <- get
    return $ snd v

main :: IO ()
main = print $ fib 10
