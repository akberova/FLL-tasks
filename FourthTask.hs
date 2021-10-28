getCoast :: ([Char], Integer, Integer) -> Integer
getCoast (_, count, price) = count * price

helper :: [([Char], Integer, Integer)] -> Integer -> Integer
helper [] accum = accum + 0
helper list accum = helper (tail list) (accum + getCoast(head list))

getTotalCoast :: [([Char], Integer, Integer)] -> Integer
getTotalCoast productsList = helper productsList 0