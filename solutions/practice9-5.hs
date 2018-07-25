-- practice-9-5.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

import           Control.Monad.Identity
import           Control.Monad.Reader

bind :: Reader r a0 -> (a0 -> Reader r a1) -> Reader r a1
bind a b = reader $ \r -> runReader (b (runReader a r)) r

return' :: a -> Reader r a
return' x = reader $ const x

ask' :: ReaderT r Identity r
ask' = reader id

local' :: (r0 -> r1) -> Reader r1 a -> Reader r0 a
local' f m = reader $ \r -> runReader m $ f r

test :: Int -> (Int, Int, Int)
test x =
  (`runReader` x) $
  ask' `bind` \a ->
    local' (+ 1) ( ask' `bind` \b -> return' b) `bind` \b ->
      ask' `bind` \c -> return' (a, b, c)

main :: IO ()
main = print $ test 1
