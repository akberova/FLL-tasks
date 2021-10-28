seqA :: Integer -> Integer
seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n < 0 = error "Only on positive numbers"
       | otherwise = let 
         seqAHelper toIterate a b c | toIterate == 0 = a
                                    | otherwise = seqAHelper (toIterate-1) (a+b-2*c) a b
         in seqAHelper (n-2) 3 2 1

