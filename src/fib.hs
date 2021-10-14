fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n > 0 = fibonacci (n - 1) + fibonacci (n - 2)
            | n < 0 = fibonacci (n + 2) - fibonacci (n + 1)



fibonacci2 n | n == 0 = 0
             | n == 1 = 1
             | n == -1 = 1
             | n > 0 = helper 1 1 n 
	     | n < 0 = (-1)^(-n+1) * fibonacci2(-n)

helper acc acc' i | i == 2 = acc
                  | i > 2 = helper (acc + acc') acc (i - 1) 