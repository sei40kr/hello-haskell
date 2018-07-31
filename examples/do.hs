-- do.hs --- do expression

-- author: Seong Yong-ju <sei40kr@gmail.com>

test :: Int -> (Int, Int)
test = do
  a <- (+ 1)
  b <- (* 1)
  return (a, b)

main :: IO ()
main = print $ test 5
