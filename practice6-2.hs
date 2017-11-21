{-# LANGUAGE UnboxedTuples #-}

-- practice6-2.hs
-- author: Seong Yong-ju ( @sei40kr )
import GHC.Base

bind a b =
  IO $ \s ->
    let (# s1, r1 #) = unIO a s
        (# s2, r2 #) = unIO (b r1) s1
    in (# s2, r2 #)

return' x = IO $ \s -> (# s, x #)

main = return' "hello" `bind` putStr `bind` print
