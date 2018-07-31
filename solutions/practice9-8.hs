-- practice9-8.hs --- Writer monad

-- author: Seong Yong-ju <sei40kr@gmail.com>

import           Control.Monad.Writer

test :: String
test =
  execWriter $ do
    tell "Hello"
    tell ", "
    tell "World"
    tell "!!"
    return ()

main :: IO ()
main = print test
