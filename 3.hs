helper :: Integer -> Integer -> Integer -> Integer
helper toIterate a b | toIterate == 0 = a
                            | otherwise = helper (toIterate-1) (a+b) a


fastfib :: Integer -> Integer
fastfib n | n == 0 = 0
          | n == 1 = 1
          | n == -1 = -1
          | n == -2 = -1
          | n > 0 = helper (n-1) 1 0
          | otherwise = helper ((-n)-2) (-1) (-1)