-- practice8-6.hs
-- author: Seong Yong-ju ( @sei40kr )
import Control.Applicative
import Control.Monad
import Data.Char

check :: String -> Maybe String
check s = do
  guard $ length s >= 3
  (a:b:c:_) <- return s
  do guard $ isDigit a
     guard $ isUpper b
       <|> do
    guard $ isUpper a
    guard $ isLower b
  guard $ isLower c
  Just s

main :: IO ()
main = do
  print $ check "1"
  print $ check "2Ab"
  print $ check "Abc"
  print $ check "Ab1"
  print $ check "1AB"
