module Task1 (factorial) where
    factorial :: Integer -> Integer
    factorial n | n == 0    = 1
                | n == 1    = 1
                | n > 1     = factorial(n-2) * n
                | otherwise = 0
    