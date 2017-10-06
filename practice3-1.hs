-- practice3-1.hs
-- author: Seong Yong-ju ( @sei40kr )
import           System.Random

randAlpha = getStdRandom $ randomR ('a', 'z')

-- Note: =<< is just like $ for vars.
-- e.g.
-- print $ someFunc
-- print =<< someAction

-- Note: But >>= is often used
-- e.g.
-- someAction >>= print

main = do
  r <- randAlpha
  print r
  if r == 'z' then print "END" else main
