sold_item :: ([Char], Integer, Integer) -> Integer
sold_item (_, count, price) = count * price

item_name :: ([Char], Integer, Integer) -> [Char]
item_name (name, _, _) = name

helper :: [([Char], Integer, Integer)] -> Integer -> [Char] -> [Char]
helper [] max name = name
helper list max name = if (sold_item (head list)) >= max then helper (tail list) (sold_item(head list)) (item_name (head list)) else helper (tail list) max name

sum_of_all :: [([Char], Integer, Integer)] -> [Char]
sum_of_all list = helper list 0 ""
