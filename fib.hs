fib n   | n == 0 = 0
        | n == 1 = 1
        | n == -1 = -1
        | n == -2 = -1
        | n > 0 = fib(n-1) + fib(n-2)
        | otherwise = fib(n+1) + fib(n+2)


fastfibhelper :: Integer -> Integer -> Integer -> Integer
fastfibhelper toIterate a b | toIterate == 0 = a
                            | otherwise = fastfibhelper (toIterate-1) (a+b) a


fastfib :: Integer -> Integer
fastfib n | n == 0 = 0
          | n == 1 = 1
          | n == -1 = -1
          | n == -2 = -1
          | n > 0 = fastfibhelper (n-1) 1 0
          | otherwise = fastfibhelper ((-n)-2) (-1) (-1)

