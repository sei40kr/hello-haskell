-- practice-9-5.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

import           Control.Monad.Identity
import           Control.Monad.Reader

bind :: MonadReader r m => Reader r t -> (t -> Reader r a) -> m a
bind a b = reader $ \r -> runReader (b (runReader a r)) r

return' :: MonadReader r m => a -> m a
return' x = reader $ const x

ask' :: ReaderT r Identity r
ask' = reader id

local' :: MonadReader t m => (t -> r) -> Reader r a -> m a
local' f m = reader $ \r -> runReader m $ f r

test :: Integer -> (Integer, Integer, Integer)
test x =
  (`runReader` x) $
  ask' `bind` \a ->
    local' (+ 1) ( ask' `bind` \b -> return' b) `bind` \b ->
      ask' `bind` \c -> return' (a, b, c)

main :: IO ()
main = print $ test 1
