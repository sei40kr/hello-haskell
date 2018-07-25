-- rpn.hs --- Reverse Polish notation parser

-- author: Seong Yong-ju <sei40kr@gmail.com>

eval :: String -> Int
eval src = rpn (words src) []

rpn :: [String] -> [Int] -> Int
rpn ("+":src) (y:x:stack) = rpn src $ x + y : stack
rpn ("-":src) (y:x:stack) = rpn src $ x - y : stack
rpn ("*":src) (y:x:stack) = rpn src $ x * y : stack
rpn (x:src) stack         = rpn src $ read x : stack
rpn [] (x:_)              = x

main :: IO ()
main = do
  print $ eval "1"
  print $ eval "1 2 +"
  print $ eval "1 2 *"
  print $ eval "2 3 4 * +"
  print $ eval "2 3 * 4 +"
