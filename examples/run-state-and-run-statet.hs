import           Control.Monad.Identity
import           Control.Monad.State

-- run-state-and-run-statet.hs --- difference between runState and runStateT

-- author: Seong Yong-ju <sei40kr@gmail.com>

st :: State s Int
st = return 1 :: State s Int

f1 :: s -> (Int, s)
f1 = runState st

f2 :: s -> Identity (Int, s)
f2 = runStateT st

main :: IO ()
main = do
  print $ f1 ()
  print $ runIdentity $ f2 ()
