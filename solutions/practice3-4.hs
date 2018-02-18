-- practice3-4.hs
-- author: Seong Yong-ju ( @sei40kr )
import           System.Random

shuffle [] = return []
shuffle xs = do
  n <- getStdRandom $ randomR(0, (length xs) - 1) :: IO Int
  xs' <- shuffle $ take n xs ++ drop (n + 1) xs
  return $ (xs !! n) : xs'

isSorted [] = True
isSorted [_] = True
isSorted (x:y:zs)
  | x > y = False
  | otherwise = isSorted (y:zs)

bogosort xs = do
  xs' <- shuffle xs
  if isSorted xs' then return xs' else bogosort xs

main = do
  xs <- shuffle [1..9]
  print xs
  bogosort xs >>= print
