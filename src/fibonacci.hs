import GHC.Base (otherwise)
fact n = if n == 0 then 1 else fact (n-1)*n


fact2 0 = 1
fact2 n = fact2 (n-2)*n
fact3 n = if n <= 1 then 1 else fact3 (n - 2) * n
fact4 n | n>0 = fact4 (n-1)*n 
        | otherwise = error "arg must be >0"
fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n > 0 = fibonacci (n - 1) + fibonacci (n - 2)
            | n < 0 = fibonacci (n + 2) - fibonacci (n + 1)