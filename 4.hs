commodities :: [([Char], Integer, Integer)]
commodities = [
    ("MacBook Pro 2021 14\"", 5, 149990),
    ("MacBook Pro 2021 16\"", 5, 249990)]

ccost :: ([Char], Integer, Integer) -> Integer
ccost (_, quantity, price) = quantity * price

total :: commodities -> Integer
total c = foldr (\x y -> y + ccost(x)) 0 commodities

main = print(total(commodities))