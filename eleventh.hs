seqA :: Integer -> Integer
seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | otherwise  = let 
                       helper a b c 2 = c
                       helper a b c n = helper b c (c + b - 2 * a) (n - 1)
                      in helper 1 2 3 n