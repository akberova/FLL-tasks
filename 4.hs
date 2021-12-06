getPrice :: ([Char], Integer, Integer) -> Integer
getPrice (_, count, price) = count * price

totalPrice :: [([Char], Integer, Integer)] -> Integer -> Integer
totalPrice [] sumPrice = sumPrice + 0
totalPrice list sumPrice = totalPrice (tail list) (sumPrice + getPrice(head list))

getTotalPrice :: [([Char], Integer, Integer)] -> Integer
getTotalPrice product = totalPrice product 0
