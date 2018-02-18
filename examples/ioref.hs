-- ioref.hs
-- author: Seong Yong-ju ( @sei40kr )
import Control.Monad
import Data.IORef

sum' xs = do
  v <- newIORef 0
  forM_ xs $ \i -> modifyIORef v (+ i)
  readIORef v

main = print =<< sum' [1 .. 100]
