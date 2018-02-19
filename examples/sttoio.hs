-- sttoio.hs
-- author: Seong Yong-ju ( @sei40kr )
import Control.Monad.ST
import Data.STRef

main = do
  let a = return 1 :: ST s Int
  print =<< stToIO a
