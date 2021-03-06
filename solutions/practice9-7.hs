-- practice9-7.hs --- Writer monad

-- author: Seong Yong-ju <sei40kr@gmail.com>

import           Control.Monad.Writer

bind :: Writer [w] a0 -> (a0 -> Writer [w] a1) -> Writer [w] a1
bind a b =
  writer $
  let (r1, w1) = runWriter a
      (r2, w2) = runWriter (b r1)
   in (r2, w1 ++ w2)

return' :: a -> Writer [w] a
return' x = writer (x, [])

tell' :: [w] -> Writer [w] ()
tell' x = writer ((), x)

test :: String
test =
  execWriter $
  tell' "Hello" `bind` \_ ->
    tell' ", " `bind` \_ ->
      tell' "World" `bind` \_ -> tell' "!!" `bind` \_ -> return' ()

main :: IO ()
main = print test
