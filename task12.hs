sum'n'count :: Integer -> (Integer, Integer)
sum'n'count n   | n < 0 = helper (-n) 0 0
                | otherwise = helper n 0 0

helper :: Integer -> Integer -> Integer -> (Integer, Integer)
helper n sum count  | n == 0 = (sum, count)
                    | otherwise = helper (div n 10) (sum + (mod n 10)) (count + 1)

main = print(sum'n'count (-39))