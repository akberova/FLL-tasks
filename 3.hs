fibonachi :: Integer -> Integer
fibonachi n = helper 0 1 n 

helper :: Integer -> Integer -> Integer -> Integer
helper first second 0 = first
helper first second n | n > 0 = helper (first + second) first (n - 1)
                      | n < 0 = helper second (first - second) (n + 1)
                      | otherwise = first

--example :set +s
--example fibonachi (-10)