module Task11
    ( 
        seqA
    ) where

    seqA :: Integer -> Integer
    seqA x | x == 0 = 1
           | x == 1 = 2
           | x == 2 = 3
           | otherwise = helper (x - 2) 3 2 1

    helper iterate a b c | iterate == 0 = a
                         | otherwise = helper (iterate - 1) (a + b - 2 * c) a b