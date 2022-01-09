commodities :: [([Char], Integer, Integer)]
commodities = [
    ("MacBook Pro 2021 14in", 5, 149990),
    ("MacBook Pro 2021 16in", 5, 249990)]

ccost :: ([Char], Integer, Integer) -> ([Char], Integer)
ccost (name, quantity, price) = (name, quantity * price)

extractcost :: ([Char], Integer) -> Integer
extractcost (name, cost) = cost

maximum' :: [([Char], Integer)] -> ([Char], Integer)
maximum' [x] = x
maximum' (x:xs)
 | extractcost(maximum' xs) > extractcost(x) = maximum' xs
 | otherwise = x

maxprofit :: commodities -> ([Char], Integer)
maxprofit c = maximum' $ map ccost commodities

main = print(maxprofit(commodities))