import           Control.Monad.Identity
import           Control.Monad.State

-- practice10-1.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

return' :: a -> State s a
return' x = StateT $ \s -> Identity (x, s)

runState' :: State s a -> (s -> (a, s))
runState' st = runIdentity . runStateT st

main :: IO ()
main = do
  let st = return' 1 :: State s Int
  print $ runState' st ()
