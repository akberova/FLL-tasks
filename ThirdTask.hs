fib :: Integer -> Integer
fib n = helper 0 1 n

helper :: Integer -> Integer -> Integer -> Integer
helper fst snd 0 = fst
helper fst snd n | n > 0 = helper (fst+snd) fst (n-1)
                    | n < 0 = helper snd (fst-snd) (n+1)
                    | otherwise = fst