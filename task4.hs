one_price :: ([Char], Integer, Integer) -> Integer
one_price (name, count, price) = count * price

helper :: [([Char], Integer, Integer)] -> Integer -> Integer
helper [] accum = accum
helper list accum = helper (tail list) (accum + one_price (head list))

all_price :: [([Char], Integer, Integer)] -> Integer
all_price list = helper list 0

main = print(all_price [("1", 3, 25), ("2", 2, 20), ("3", 5, 10)])
