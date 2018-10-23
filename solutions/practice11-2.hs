import Control.Monad

-- practice11-2.hs

-- author: Seong Yong-ju <sei40kr@gmail.com>

fizzBuzz x | x `mod` 3 == 0 && x `mod` 5 == 0 = Left "FizzBuzz"
fizzBuzz x | x `mod` 3 == 0 = Left "Fizz"
fizzBuzz x | x `mod` 5 == 0 = Left "Buzz"
fizzBuzz x = Right $ show x

main :: IO ()
main = do
  forM_ [1..15] $ \i ->
    putStrLn $ either id id $ fizzBuzz i
