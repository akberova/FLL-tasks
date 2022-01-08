module SumNCount where
    sum'n'count :: Integer -> (Integer, Integer)
    sum'n'count a = sum'n'countHelper (abs a) 0 0

    sum'n'countHelper :: Integer -> Integer -> Integer -> (Integer, Integer)
    sum'n'countHelper 0 0 0 = (0, 1)
    sum'n'countHelper a sum count = if a > 0 then sum'n'countHelper (a `div` 10) (sum + (a `mod` 10)) (count + 1)
        else (sum, count)