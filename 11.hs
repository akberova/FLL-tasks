seqA :: Integer -> Integer
seqA 0 = 1
seqA 1 = 2
seqA 2 = 3
seqA a = helper 3 2 1 (a-2)

helper :: (Eq t1, Num t1, Num t2) => t2 -> t2 -> t2 -> t1 -> t2
helper a b c count | count == 0 = a
                    | otherwise = helper (a+b-2*c) a b (count-1)

--example seaA 301