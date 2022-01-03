sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = helper (abs x) 0 0 

helper :: Integer -> Integer -> Integer -> (Integer, Integer)
helper flag result numbers  | flag == 0 = (result, numbers)
                            | otherwise = helper (div flag 10) (result + mod flag 10)  (numbers+1)

--example sum'n'count 361
