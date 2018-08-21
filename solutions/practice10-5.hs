import           Control.Monad.State
import           Data.Char

-- practice10-5.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

getch :: (a -> Bool) -> StateT [a] Maybe a
getch f = StateT getch
  where
    getch (x:xs)
      | f x = Just (x, xs)
    getch _ = Nothing

test :: [Char] -> Maybe [Char]
test = evalStateT $ do
  ch1 <- getch isUpper
  ch2 <- getch isLower
  ch3 <- getch isDigit
  return [ch1, ch2, ch3]

main :: IO ()
main = do
  print $ test "Aa0"
  print $ test "abc"
