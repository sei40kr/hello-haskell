-- practice3-7.hs
-- author: Seong Yong-ju ( @sei40kr )
import           Debug.Trace

qsort []     = return []
qsort (n:xs) = do
  let
    lt   = [x | x <- xs, x <  n]
    gteq = [x | x <- xs, x >= n]
  putStrLn $ "qsort " ++ show (n:xs) ++ " = qsort " ++ show lt ++ " ++ " ++ show [n] ++ " ++ " ++ show gteq
  lt' <- qsort lt
  gteq' <- qsort gteq
  return $ lt' ++ [n] ++ gteq'

main = do
  qsort [4, 6, 9, 8, 3, 5, 1, 7, 2] >>= print
