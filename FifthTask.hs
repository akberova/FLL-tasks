getCoast :: ([Char], Integer, Integer) -> Integer
getCoast (_, count, price) = count * price

helper :: [([Char], Integer, Integer)] -> ([Char], Integer) -> ([Char], Integer)
helper [] max = max
helper list max =
    let 
        newCoast = getCoast(head list)
        newName = getName(head list)
    in helper (tail list) (if newCoast > snd max then (newName, newCoast) else max)

getName :: ([Char], Integer, Integer) -> [Char]
getName (name, _, _) = name

getMaxCoast :: [([Char], Integer, Integer)] -> ([Char], Integer)
getMaxCoast productsList = helper productsList (getName(head productsList), getCoast(head productsList))

-- getMaxCoast [("first", 10, 50),("second", 40, 5),("third", 1, 10)]