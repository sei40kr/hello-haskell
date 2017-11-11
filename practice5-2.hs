-- practice5-2.hs
-- author: Seong Yong-ju ( @sei40kr )
import Control.Applicative
import Data.Array.IO

modifyArray a i f = f <$> readArray a i >>= writeArray a i

main = do
  a <- newArray (0, 2) 0 :: IO (IOUArray Int Int)
  print =<< getElems a
  modifyArray a 1 (+ 5)
  print =<< getElems a
