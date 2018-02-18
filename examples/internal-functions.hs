{-# LANGUAGE UnboxedTuples #-}

-- internal-functions.hs
-- author: Seong Yong-ju ( @sei40kr )
import GHC.Base
import GHC.ST

unST (ST f) = f

main =
  IO $ \s ->
    let f1 = unST $ return 1
        f2 = unIO $ print r1
        (# s1, r1 #) = f1 s
        (# s2, r2 #) = f2 s1
    in (# s2, r2 #)
