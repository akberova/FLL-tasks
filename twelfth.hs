sum'n'count :: Integer -> (Integer,Integer)
sum'n'count x =  if x < 0 then helper (-x) 0 0 else helper x 0 0

helper:: Integer -> Integer -> Integer -> (Integer, Integer)
helper 0 sum count = (sum,count)
helper x sum count = helper (div x 10) (sum + (mod x 10)) (count + 1)
