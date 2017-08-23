import Data.Char

rot13ch ch
  | 'a' <= ch && ch <= 'm'
  || 'A' <= ch && ch <= 'M' = chr $ ord ch + 13
  | 'n' <= ch && ch <= 'z'
  || 'N' <= ch && ch <= 'Z' = chr $ ord ch - 13
  | otherwise = ch

rot13 "" = ""
rot13 (x:xs) = rot13ch x : rot13 xs

main = do
  let hello13 = rot13 "Hello, World!"
  print hello13
  print $ rot13 hello13
