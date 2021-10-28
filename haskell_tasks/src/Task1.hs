module Task1
    ( factDouble
    ) where
    
    factDouble n | n > 1 = factDouble (n - 2) * n
                 | (n == 1 || n == 0) = 1
                 | otherwise = error("args must be >0");