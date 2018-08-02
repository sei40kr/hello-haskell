import           Control.Monad.Identity
import           Control.Monad.State

-- statet-state.hs --- an example of conversion from StateT to State

-- author: Seong Yong-ju <sei40kr@gmail.com>

main :: IO ()
main = do
  let a = return 1 :: StateT s Identity Int
  print $ evalState a ()
