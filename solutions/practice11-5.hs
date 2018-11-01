import           Control.Monad
import           Control.Monad.State
import           Data.Char

-- practice11-5.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

getch f s = StateT getch
  where
    getch (x:xs)
      | f x = Right (x, xs)
      | otherwise = Left $ "not " ++ s ++ ": " ++ show x
    getch _ = Left "out of range"

test =
  evalStateT $ do
    ch0 <- getch isUpper "upper"
    ch1 <- getch isLower "lower"
    ch2 <- getch isDigit "digit"
    return [ch0, ch1, ch2]

main = do
    print $ test "Aa0"
    print $ test "A"
    print $ test "aa0"
    print $ test "AA0"
    print $ test "Aaa"
