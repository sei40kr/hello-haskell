import Control.Exception
import Control.Monad

-- practice11-4.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

main = do
    forM_ [0..3] $ \i -> do
        a <- try $ evaluate $ 6 `div` i
        print (a :: Either SomeException Int)
