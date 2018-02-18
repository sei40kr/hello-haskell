{-# LANGUAGE UnboxedTuples #-}

-- practice9-2.hs
-- author: Seong Yong-ju ( @sei40kr )
import Data.STRef
import GHC.ST

unST :: ST s a -> STRep s a
unST (ST f) = f

bind :: ST s r -> (r -> ST s a) -> ST s a
bind a b =
  ST $ \s ->
    let (# s1, r1 #) = unST a s
        (# s2, r2 #) = unST (b r1) s1
    in (# s2, r2 #)

return' :: a -> ST s a
return' x = ST $ \s -> (# s, x #)

main :: IO ()
main =
  print $
  runST $
  return' 1 `bind` newSTRef `bind` \a ->
    modifySTRef a (+ 1) `bind` \_ -> readSTRef a `bind` return'
