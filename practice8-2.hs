-- practice8-2.hs
-- author: Seong Yong-ju ( @sei40kr )
bind (Just a') b = b a'
bind Nothing _ = Nothing

main = do
  print $ Just 1 `bind` \a -> Just $ a * 2
  print $ Just 1 `bind` \a -> Nothing `bind` \b -> Just $ a * b
