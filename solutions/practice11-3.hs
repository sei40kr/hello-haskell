import           Control.Exception
import           Control.Monad

-- practice11-3.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

main =
  forM_ ["1", "a", "3"] $ \s ->
    print (read s :: Int) `catch` \(SomeException _) -> print s
