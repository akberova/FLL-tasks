seqA :: Integer -> Integer
seqA n | n == 0 = 1
       | n == 1 = 2
       | n == 2 = 3
       | n < 0 = error "need >= 0"
       | otherwise = let
         seqAHelper toIterate a b c | toIterate == 0 = a
                                    | otherwise = seqAHelper (toIterate-1) (a+b-2*c) a b
         in seqAHelper (n-2) 3 2 1

main = do
    let result = seqA 301
    print result