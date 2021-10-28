seqA :: Integer -> Integer
seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n == n = s' 3 3 2 1 n

s' :: Integer -> Integer -> Integer -> Integer -> Integer -> Integer 
s' i a b c n 
      | (i < n) = s' (i + 1) res a b n
      | (i == n) = res
      where res = a + b - 2*c
