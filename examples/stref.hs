-- stref.hs
-- author: Seong Yong-ju ( @sei40kr )
import           Control.Monad
import           Control.Monad.ST
import           Data.STRef

sum' :: (Foldable t, Num a) => t a -> a
sum' xs =
  runST $ do
    v <- newSTRef 0
    forM_ xs $ \i -> modifySTRef v (+ i)
    readSTRef v

main :: IO ()
main = print $ sum' [1 .. (100 :: Integer)]
