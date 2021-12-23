getCount :: ([Char], Integer, Integer) -> Integer
getCount (_, count ,_) = count

getCost :: ([Char], Integer, Integer) -> Integer
getCost (_, _ , cost) = cost

result :: [([Char], Integer, Integer)] -> Integer
result [] = 0
result product  = getCount(head product) * getCost(head product) + result (tail product)

