-- practice9-3.hs
-- author: Seong Yong-ju ( @sei40kr )
import Control.Monad
import Control.Monad.State

a `bind` b = state $ \s ->
    let (r1, s1) = runState a s
        (r2, s2) = runState (b r1) s1
    in  (r2, s2)
return' x  = state $ \s -> (x , s)
get'       = state $ \s -> (s , s)
put'    x  = state $ const ((), x)

fib x =
  (`evalState` (0, 1)) $
  (replicateM_ (x - 1) $ get' `bind` \(a, b) -> put' (b, a + b)) `bind` \_ ->
    get' `bind` \v -> return' $ snd v

main = do
  print $ fib 10
