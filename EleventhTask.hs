seqA :: Int -> Int
seqA n | n == 1 = 1
       | n == 2 = 2
       | n == 3 = 3
       | otherwise = helper 1 2 3 (n - 2)

-- did not work after 173 (wtf??)
helper :: Int -> Int -> Int -> Int -> Int
helper _ _ c 0 = c
helper a b c n = helper b c (c + b - 2*a) (n - 1)

-- Alexey Voitenko ©
seqB :: Integer -> Integer
seqB n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n < 0 = error "Only on positive numbers"
       | otherwise = let 
         seqAHelper toIterate a b c | toIterate == 0 = a
                                    | otherwise = seqAHelper (toIterate-1) (a+b-2*c) a b
         in seqAHelper (n-2) 3 2 1