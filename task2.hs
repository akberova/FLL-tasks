fibonacci 0 = 0
fibonacci 1 = 1
fibonacci (-1) = 1
fibonacci (-2) = (-1)

fibonacci n = if n > 1 then fibonacci (n-1) + fibonacci (n-2) else fibonacci (n+2) - fibonacci (n+1)
