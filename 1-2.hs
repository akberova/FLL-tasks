factorial_2 :: Integer -> Integer
factorial_2 1 = 1
factorial_2 2 = 2
factorial_2 n = n * factorial_2 (n-2)

--example factorial_2 7

fibonachi :: Integer -> Integer 
fibonachi (-1) = 1
fibonachi 0 = 0
fibonachi 1 = 1
fibonachi n | n < 0 = fibonachi (n+2) - fibonachi (n+1)
            | otherwise = fibonachi (n-1) + fibonachi (n-2)

--example fibonachi (-10)