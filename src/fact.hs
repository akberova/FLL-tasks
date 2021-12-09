import GHC.Base (otherwise)
fact n = if n == 0 then 1 else fact (n-1)*n


fact2 0 = 1
fact2 n = fact2 (n-2)*n
fact3 n = if n <= 1 then 1 else fact3 (n - 2) * n
fact4 n | n>0 = fact4 (n-1)*n 
        | otherwise = error "arg must be >0"

fact5 n | n>=0 = helper 1 n
        | otherwise = error "arg must be > 0"

helper acc 0 = acc
helper acc n = helper (acc*n) (n-1)