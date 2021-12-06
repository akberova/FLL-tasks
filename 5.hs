getPrice :: ([Char], Integer, Integer) -> Integer
getPrice (_, count, price) = count * price

maxPrice :: [([Char], Integer, Integer)] -> ([Char], Integer) -> ([Char], Integer)
maxPrice [] max = max
maxPrice list max = let prices = getPrice(head list)
                        names = getName(head list)
                    in maxPrice (tail list) (if prices > snd max then (names, prices) else max)

getName :: ([Char], Integer, Integer) -> [Char]
getName (name, _, _) = name

getMaxPrice :: [([Char], Integer, Integer)] -> ([Char], Integer)
getMaxPrice product = maxPrice product (getName(head product), getPrice(head product))