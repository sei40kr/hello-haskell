import           Control.Applicative
import           Data.IORef

main = do
  s <- newIORef 0
  let loop i | 1 <= i && i <= 100 = do
        s' <- readIORef s
        writeIORef s $ s' + i
        loop $ i + 1
      loop _ = return ()
  loop 1
  readIORef s >>= print
