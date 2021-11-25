-- 28.10 (с пары)

sum'n'count :: Integer -> (Integer, Integer)

sum'n'count n = if n < 0 then helper (-n) 0 0 else helper n 0 0
    where
        helper 0 sum count = (sum, count)
        helper n sum count = helper (div n 10) (sum + (mod n 10)) (count + 1)
