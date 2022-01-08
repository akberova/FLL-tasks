seqA :: Integer -> Integer
seqA  n | n == 0 = 1
        | n == 1 = 2
        | n == 2 = 3
        | otherwise = helper (n - 2) 3 2 1

helper n a b c | n == 0 = a
               | otherwise = helper (n - 1) (a + b - 2 * c) a b
main = print(seqA 301)