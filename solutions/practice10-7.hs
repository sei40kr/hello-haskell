import Control.Monad.Reader
import Control.Monad.Writer

-- practice10-7.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

testR :: Int -> IO ()
testR x = (`runReaderT` x) $ do
    a <- ask
    liftIO $ print $ a + 1

testW :: Int -> IO ((), String)
testW x = runWriterT $ do
    tell $ show x
    liftIO $ print $ x + 1

testL :: Int -> IO ()
testL x = liftIO $ print [x + 1]

main :: IO ()
main = do
    testR 0
    _ <- testW 0
    testL 0
