import           Control.Monad
import           Control.Monad.State hiding (get, lift, modify)

-- practice10-2.hs ---

-- author: Seong Yong-ju <sei40kr@gmail.com>

a `bind` b = StateT (runStateT a >=> \(r, s1) -> runStateT (b r) s1)

get = StateT $ \s -> return (s, s)

modify f = StateT $ \s -> return ((), f s)

lift m = StateT $ \s -> m >>= \a -> return (a, s)

fact :: Integer -> IO Integer
fact x = (`execStateT` 1) $
    forM_ [1..x] $ \i ->
        modify (* i) `bind` \_ ->
        get `bind` \v ->
        lift $ putStrLn $ "*" ++ show i ++ " -> " ++ show v

main :: IO ()
main = fact 5 >>= print
