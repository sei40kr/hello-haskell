-- practice7-4.hs
-- author: Seong Yong-ju ( @sei40kr )
bind xs f = foldr ((++) . f) [] xs

return' x = [x]

main = print $ [1 .. 3] `bind` \x -> "abc" `bind` \y -> return' (x, y)
