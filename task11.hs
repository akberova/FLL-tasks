seqA :: Integer -> Integer
seqA n    | n == 0 = 1
            | n == 1 = 2
            | n == 2 = 3
            | n > 0 =
                let
                  helper integrate acc1 acc2 acc3 | integrate  == 0 = acc1
                                            | otherwise = helper (integrate - 1 )(acc1 + acc2 - 2 * acc3) (n - 1)
                in helper 1 2 3 (n - 2)
            | otherwise = error "error"

main = print(seqA 301)