fact n = if n <= 0 then 1 else fact (n-2)*n

fact2 0 = 1
fact2 1 = 1
fact2 n = fact2(n-2)*n