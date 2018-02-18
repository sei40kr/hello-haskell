-- practice8-5.hs
-- author: Seong Yong-ju ( @sei40kr )
import Control.Monad
import Data.Char

numUpper x y s = do
  guard $ length s == x + y
  guard $ length (filter isDigit $ take x s) == x
  guard $ length (filter isUpper $ drop x s) == y
  Just s

main = do
  print $ numUpper 3 2 "123AB"
  print $ numUpper 3 2 "123ABC"
  print $ numUpper 3 2 "12ABC"
