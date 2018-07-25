-- practice9-3.hs
-- author: Seong Yong-ju ( @sei40kr )
import           Control.Monad
import           Control.Monad.State

bind :: State s a1 -> (a1 -> State s a2) -> State s a2
bind a b = state $ \s ->
    let (r1, s1) = runState a s
        (r2, s2) = runState (b r1) s1
    in  (r2, s2)

return' :: a -> State s a
return' x = state $ \s -> (x, s)

get' :: State s s
get' = state $ \s -> (s, s)

put' :: s -> State s ()
put'    x  = state $ const ((), x)

fib :: Int -> Int
fib x =
  (`evalState` (0, 1)) $
  replicateM_ (x - 1) (get' `bind` \(a, b) -> put' (b, a + b)) `bind` \_ ->
    get' `bind` \v -> return' $ snd v

main :: IO ()
main = print $ fib 10
