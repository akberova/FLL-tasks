fibfast :: Int -> Int
fib' :: Int -> Int -> Int -> Int
fib' first second 0 = first
fib' first second n | n > 0 = fib' (first + second) first (n - 1)
                      | n < 0 = fib' second (first - second) (n + 1)
                      | otherwise = first
                      -}

{- fibfast n = fib' 0 1 n
    where fib' a b n | n <= 1 = b
                     | otherwise = fib' b (a+b) (n-1) -}