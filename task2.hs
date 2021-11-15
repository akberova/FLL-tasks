fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib (-1) = 1
fib (-2) = (-1)
fib x = if x > 1 then fib (x - 1) + fib (x - 2) else fib (x + 2) - fib (x + 1)

main = do
  n <- getLine
  let result = fib (read n :: Integer)
  print result