f2 n = if n <= 1 then 1 else f2 (n-2) * n


main = do
  n <- getLine
  let result = f2 (read n :: Integer)
  print result