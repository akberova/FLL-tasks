fib::Integer->Integer
fib 0 = 0
fib 1 = 1
fib (-1) = (-1)
fib n = if n > 0 then fib (n - 1) + fib (n - 2)
        else (-1)^((-1) * n + 1) * fib(n * (-1))
main = putStrLn $ show $ fib $ -4