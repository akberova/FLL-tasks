fbnc helper i j | helper == 0 = i
                | otherwise = fbnc (helper-1) (i+j) i


fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n == (-1) = -1
            | n > 0 = fbnc (n-1) 1 0
            | otherwise = fbnc ((-n)-2) (-1) (-1)
