fib n   | n == 0 = 0
        | n == 1 = 1
        | n == -1 = -1
        | n == -2 = -1
        | n > 0 = fib(n-1) + fib(n-2)
        | otherwise = fib(n+1) + fib(n+2)