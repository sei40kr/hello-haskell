import Control.Monad.Reader
import Control.Monad.Writer
import Control.Monad.List

-- practice10-6.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

testR :: Int -> IO ()
testR x = (`runReaderT` x) $ do
    a <- ask
    lift $ print $ a + 1

testW :: Int -> IO ((), String)
testW x = runWriterT $ do
    tell $ show x
    lift $ print $ x + 1

testL :: Int -> IO [()]
testL x = runListT $ lift $ print [x + 1]

main :: IO [()]
main = do
    testR 0
    _ <- testW 0
    testL 0
