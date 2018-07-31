-- practice9-9.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

test :: Int -> (Int, Int)
test x =
  let a = (+ 1) x
      b = (* 2) x
   in (a, b)

main :: IO ()
main = print $ test 5
