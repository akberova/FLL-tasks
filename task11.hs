seqA :: Integer -> Integer
seqA num    | num == 0 = 1
            | num == 1 = 2
            | num == 2 = 3
            | num > 0 =
                let
                  helper acc1 acc2 acc3 n   | n == 0 = acc3
                                            | otherwise = helper acc2 acc3 (acc3 + acc2 - 2 * acc1) (n - 1)
                in helper 1 2 3 (num - 2)
            | otherwise = error "error"

main = print(seqA 301)