getName :: ([Char], Integer, Integer) -> [Char]
getName (name, _, _) = name

getCount :: ([Char], Integer, Integer) -> Integer
getCount (_, count ,_) = count

getCost :: ([Char], Integer, Integer) -> Integer
getCost (_, _ , cost) = cost

searchmax :: [([Char], Integer, Integer)] -> Integer -> [Char] -> [Char]
searchmax [] res name = name
searchmax product res name = if (getCount(head product) * getCost(head product)) > res then searchmax (tail product) (getCount(head product) * getCost(head product)) (getName(head product)) else searchmax (tail product) res name

result :: [([Char], Integer, Integer)] -> [Char]
result product = searchmax (tail product) (getCount(head product) * getCost(head product)) (getName(head product))