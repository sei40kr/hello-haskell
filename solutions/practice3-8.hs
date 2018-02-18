-- practice3-8.hs
-- author: Seong Yong-ju ( @sei40kr )
import           Data.IORef

counter = do
  c <- newIORef 0
  return $ do
    tmp <- readIORef c
    writeIORef c $ tmp + 1
    readIORef c

main = do
  f <- counter
  f >>= print
  f >>= print
  f >>= print
