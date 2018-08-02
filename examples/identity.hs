import Control.Monad.Identity

-- identity.hs --- Identity monad

-- author: Seong Yong-ju <sei40kr@gmail.com>

main :: IO ()
main = do
  let a = return 1 :: Identity Int
  print $ runIdentity a
