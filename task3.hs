fib :: Integer -> Integer
fib n = helper 0 1 n

helper :: Integer -> Integer -> Integer -> Integer
helper x y 0 = x
helper x y n    | n > 0 = helper (x + y) x (n - 1)
                | n < 0 = helper y (x - y) (n + 1)
                | n == 0 = x

main = print(fib (-9))