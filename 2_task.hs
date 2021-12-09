fbnc :: Integer -> Integer
fbnc n | n == 0 = 0
       | n == 1 = 1
       | n == -1 = -1
       | n == -2 = -1
       | n > 1 = fbnc(n-1) + fbnc(n-2)
       | n < -2 = fbnc(n + 2) + fbnc(n + 1) 
