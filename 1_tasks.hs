dFactorial :: Integer -> Integer
dFactorial x = if x <= 1 then 1 else x * dFactorial (x - 2)
