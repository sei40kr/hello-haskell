-- applicative.hs --- Reimplementation of Applicative style

-- author: Seong Yong-ju <sei40kr@gmail.com>

-- Reimplementation of <$>
dollar :: Monad m => (a -> r) -> m a -> m r
dollar f m = do
  a <- m
  return $ f a

-- Reimplementation of <*>
asterisk :: Monad m => m (a -> r) -> m a -> m r
asterisk mf m = do
  f <- mf
  a <- m
  return $ f a

main :: IO ()
main = print $ (+) `dollar` [1] `asterisk` [1::Int]
