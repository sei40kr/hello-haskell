import System.Random

shuffle [] = return []
shuffle xs =
  (getStdRandom $ randomR (0, length xs - 1) :: IO Int) >>= \n ->
    shuffle (take n xs ++ drop (n + 1) xs) >>= \xs' -> return $ (xs !! n) : xs'

main = shuffle [1 .. 9] >>= \xs -> print xs
