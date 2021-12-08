fib 0 = 0
fib 1 = 1
fib (-1) = 1
fib (-2) = (-1)
fib n = if n > 1 then fib (n - 1) + fib (n - 2) else fib (n + 2) - fib (n + 1)
