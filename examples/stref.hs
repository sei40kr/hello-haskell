-- stref.hs
-- author: Seong Yong-ju ( @sei40kr )
import Control.Monad
import Control.Monad.ST
import Data.STRef

sum' xs =
  runST $ do
    v <- newSTRef 0
    forM_ xs $ \i -> modifySTRef v (+ i)
    readSTRef v

main = print $ sum' [1 .. 100]
