{-# LANGUAGE UnboxedTuples #-}

-- practice6-1.hs
-- author: Seong Yong-ju ( @sei40kr )
import GHC.Base
import System.Random

shuffle [] = IO $ \s -> (# s, [] #)
shuffle xs =
  IO $ \s ->
    let (# s1, n #) =
          unIO (getStdRandom $ randomR (0, length xs - 1) :: IO Int) s
        (# s2, xs' #) = unIO (shuffle $ take n xs ++ drop (n + 1) xs) s1
    in (# s2, (xs !! n) : xs' #)

main =
  IO $ \s ->
    let (# s1, xs #) = unIO (shuffle [1 .. 9]) s
        (# s2, r #) = unIO (print xs) s1
    in (# s2, r #)
