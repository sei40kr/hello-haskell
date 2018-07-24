-- ioref.hs
-- author: Seong Yong-ju ( @sei40kr )
import           Control.Monad
import           Data.IORef

sum' :: (Foldable t, Num b) => t b -> IO b
sum' xs = do
  v <- newIORef 0
  forM_ xs $ \i -> modifyIORef v (+ i)
  readIORef v

main :: IO ()
main = sum' [1 .. 100 :: Integer] >>= print
