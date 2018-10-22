import Data.Char
import Control.Monad

-- practice11-1.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>


getch s n
    | n < length s = Right $ s !! n
    | otherwise    = Left "out of range"

test s = do
    ch0 <- getch s 0
    ch1 <- getch s 1
    ch2 <- getch s 2
    unless (isUpper ch0) $ Left $ "not upper: " ++ show ch0
    unless (isLower ch1) $ Left $ "not lower: " ++ show ch1
    unless (isDigit ch2) $ Left $ "not digit: " ++ show ch2
    return [ch0, ch1, ch2]

main = do
    print $ test "Aa0"
    print $ test "A"
    print $ test "aa0"
    print $ test "AA0"
    print $ test "Aaa"
