fact 0 = 1
fact n = n*fact(n-1)

fact2 0 = 1
fact2 1 = 1
fact2 n = n*fact2(n-2)

fact3 n = if (n == 0) || (n == 1) then 1 else n*fact3(n-2)

fact4 0 = 1
fact4 n | n > 0 = fact4(n-1)*n
        | otherwise = error "argument must be non-negative"



