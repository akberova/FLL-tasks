module Fib where
    fib n  | n == 0 = 0
           | n == 1 = 1
           | n > 1 = fib (n-1) + fib (n-2)
           | n < 0 = fib (n+2) - fib (n+1)