getQuantity :: (Integer, Integer, String) -> Integer
getQuantity (quantity, cost, name) = quantity

getCost :: (Integer, Integer, String) -> Integer
getCost (quantity, cost, name) = cost

calculateAllItemsCost :: (Integer, Integer, String) -> Integer
calculateAllItemsCost item = getCost item * getQuantity item

totalCost :: [(Integer, Integer, String)] -> Integer
totalCost [] = 0
totalCost items = calculateAllItemsCost (head items) + totalCost(tail items)

arr :: [(String, Integer, Integer)]
arr = [("Celery", 6, 80), ("Apple", 2, 90)]
