module Task2 (fibonachi) where
    fibonachi n | n == 0    = 0
                | n == 1    = 1
                | n > 0     = fibonachi(n-1) + fibonachi(n-2)
                | n < 0     = fibonachi(-n) * (-1)^^(n+1)