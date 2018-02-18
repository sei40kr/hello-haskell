-- practice-3-3.hs
-- author: Seong Yong-ju ( @sei40kr )
import           System.Random

shuffle [] = return []
shuffle xs = do
  -- Get index of the array randomly
  n <- getStdRandom $ randomR(0, (length xs) - 1) :: IO Int
  -- Move n-th element to the first and shuffle the rest elements
  xs' <- shuffle $ take n xs ++ drop (n + 1) xs
  return $ (xs !! n) : xs'

main = do
  shuffle [1..9] >>= print
