fibonaccihelper helper a b  | helper == 0 = a
                            | otherwise = fibonaccihelper (helper-1) (a+b) a

fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n == (-1) = -1
            | n > 0 = fibonaccihelper (n-1) 1 0
            | otherwise = fibonaccihelper ((-n)-2) (-1) (-1)