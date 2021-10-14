fact0 n | n == 0 = 1
        | otherwise = n* fact0 (n-1)

fact1 n | n == 0 = 1
        | n == 1 = 1
        | otherwise = n* fact1 (n-2)

