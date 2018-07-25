-- practice-9-6.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

import           Control.Monad.Reader

test :: Int -> (Int, Int, Int)
test x =
  (`runReader` x) $ do
    a <- ask
    b <- local (+ 1) ask
    c <- ask
    return (a, b, c)

main :: IO ()
main = print $ test 1
