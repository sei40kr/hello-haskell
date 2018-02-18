-- practice7-6.hs
-- author: Seong Yong-ju ( @sei40kr )
bind xs f = foldr ((++) . f) [] xs

return' x = [x]

main = do
  print $
    [1 .. 5] `bind` \x ->
      [1 .. 5] `bind` \y ->
        if x + y == 6
          then return' (x, y)
          else []
