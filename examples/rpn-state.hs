-- rpn-state.hs --- Reverse Polish notation parser using State monad

-- author: Seong Yong-ju <sei40kr@gmail.com>

import Control.Monad.State

push :: Int -> State [Int] ()
push x = modify (x:)

pop :: State [Int] Int
pop = do
  (x:xs) <- get
  put xs
  return x

eval :: String -> Int
eval src = evalState (rpn (words src)) []

rpn :: [String] -> State [Int] Int
rpn ("+":src) = do
  y <- pop
  x <- pop
  push $ x + y
  rpn src
rpn ("-":src) = do
  y <- pop
  x <- pop
  push $ x - y
  rpn src
rpn ("*":src) = do
  y <- pop
  x <- pop
  push $ x * y
  rpn src
rpn [] = pop
rpn (x:src) = do
  push $ read x
  rpn src

main :: IO ()
main = do
  print $ eval "1"
  print $ eval "1 2 +"
  print $ eval "1 2 *"
  print $ eval "2 3 4 * +"
  print $ eval "2 3 * 4 +"
