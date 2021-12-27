countForOne (name, number, price) = number*price

measure :: ([Char], Integer, Integer)
measure = ("empty list", 0, 0)

getTheMost :: [([Char], Integer, Integer)] -> ([Char], Integer, Integer)
getTheMost productList | null productList = measure
                       | otherwise = setLeast productList measure
                        where setLeast productList measure | null productList = measure
                                                           |countForOne (head productList) > countForOne measure = setLeast (tail productList) (head productList)
                                                           | otherwise = setLeast (tail productList) measure