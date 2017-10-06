-- practice3-2.hs
-- author: Seong Yong-ju ( @sei40kr )

-- Note: We can use return, but it returns actions, not vars.
-- e.g.
-- add x y = return $ x + y
-- add 1 2 =>> print

fact 0 = return 1
fact n | n > 0 = do
  -- Note: In this case, we have no other choices but using n'?
  n' <- fact (n - 1)
  return $ n * n'

main = do
  fact 5 >>= print
