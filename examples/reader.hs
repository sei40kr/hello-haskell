-- reader.hs --- Examples of Reader monad

-- author: Seong Yong-ju <sei40kr@gmail.com>

import           Control.Monad.Reader
import           Control.Monad.State

main :: IO ()
main = do
  print $
    (`runState` (1 :: Integer)) $ -- State monad
     do
      a <- get
      return $ a + 1
  print $
    (`runReader` (1 :: Integer)) $ -- Reader monad
     do
      a <- ask
      return $ a + 1
