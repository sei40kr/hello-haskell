f xs g = [g x | x <- xs]
double x = 2 * x

main = print $ f [1..5] (2 *)
