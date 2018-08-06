{-# LANGUAGE UnboxedTuples #-}

import GHC.Base

-- print.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

main :: IO ()
main = IO $ \s ->
  let (# s1, r #) = unIO (print "hello") s
  in (# s1, r #)
