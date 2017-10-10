-- practice3-5.hs
-- author: Seong Yong-ju ( @sei40kr )
import           System.Random

showDice :: IO Int
showDice = do
  n <- getStdRandom $ randomR(1, 6) :: IO Int
  print n
  return n

main = do
  showDice
  showDice
  print =<< showDice
