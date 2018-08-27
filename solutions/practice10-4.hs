import Data.Char

-- practice10-4.hs --- Maybe monad

-- author: Seong Yong-ju <sei40kr@gmail.com>

getch :: (Char -> Bool) -> String -> Maybe (Char, String)
getch f (x:xs) | f x = Just (x, xs)
getch _ _ = Nothing

test :: String -> Maybe String
test s0 = do
  (ch1, s1) <- getch isUpper s0
  (ch2, s2) <- getch isLower s1
  (ch3, _) <- getch isDigit s2
  return [ch1, ch2, ch3]

main :: IO ()
main = do
  print $ test "Aa0"
  print $ test "abc"
