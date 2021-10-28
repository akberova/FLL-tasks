module Task2
    ( fibonachi
    ) where
    
    fibonachi 0 = 0
    fibonachi 1 = 1
    fibonachi n | n > 0 = fibonachi (n - 1) + fibonachi (n - 2)
                | n < 0 = ((-1) ^^ (n + 1)) * fibonachi (-n)