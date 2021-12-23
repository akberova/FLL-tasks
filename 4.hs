getCount :: (String , Integer, Integer) -> Integer
getCount (name, count, price) = count

getPrice :: (String, Integer, Integer) -> Integer
getPrice (name, count, price) = price

calculatePrice :: (String, Integer, Integer) -> Integer
calculatePrice tovar = getCount tovar * getPrice tovar

totalCost :: [(String, Integer, Integer)] -> Integer
totalCost [] = 0
totalCost products = calculatePrice(head products) + totalCost(tail products)