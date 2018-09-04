-- applicative.hs --- Reimplementation of Applicative style

-- author: Seong Yong-ju <sei40kr@gmail.com>

dollar :: Monad m => (a -> r) -> m a -> m r
dollar f m = do
  a <- m
  return $ f a

main :: IO ()
main = print $ (1 +) `dollar` [1::Int]
