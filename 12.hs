sum'n'count :: Integer -> (Integer, Integer)
sum'n'count n = helper 0 0 (abs n)
    where 
        helper sum count 0 = (sum, count)
        helper sum count n = helper (sum + (mod n 10)) (count + 1) (div n 10)

