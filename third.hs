fib n = helper n 0 1

helper n a b | n == 0 = a
             | n > 0  = helper (n - 1) b (a + b)
             | n < 0  = helper (n + 1) b (a - b)