sold_item :: ([Char], Integer, Integer) -> Integer
sold_item (_, count, price) = count * price

helper :: [([Char], Integer, Integer)] -> Integer -> Integer
helper [] sum = sum 
helper list sum = helper (tail list) (sum + sold_item (head list))

sum_of_all :: [([Char], Integer, Integer)] -> Integer
sum_of_all list = helper list 0
