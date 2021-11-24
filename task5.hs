one_price :: ([Char], Integer, Integer) -> Integer
one_price (name, count, price) = count * price

name_o :: ([Char], Integer, Integer) -> [Char]
name_o (name, count, price) = name

helper :: [([Char], Integer, Integer)] -> Integer -> [Char] -> [Char]
helper [] accum name = name
helper list accum name = if (one_price (head list)) >= accum  then helper (tail list) (one_price (head list)) (name_o (head list)) else helper (tail list) accum name

all_price :: [([Char], Integer, Integer)] -> [Char]
all_price list = helper list 0 ""

main = print(all_price [("1", 3, 25), ("2", 2, 20), ("3", 5, 10)])