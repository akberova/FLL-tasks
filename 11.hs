seqA :: Integer -> Integer
seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | otherwise = let helper iterate a b c | iterate == 0 = a
                                              | otherwise = helper (iterate - 1) (a + b - 2 * c) a b
                     in helper (n - 2) 3 2 1