getQuantity :: (Integer, Integer, String) -> Integer
getQuantity (quantity, cost, name) = quantity

getCost :: (Integer, Integer, String) -> Integer
getCost (quantity, cost, name) = cost

getName :: (Integer, Integer, String) -> String
getName (quantity, cost, name) = name

calculateAllItemsCost :: (Integer, Integer, String) -> Integer
calculateAllItemsCost item = getCost item * getQuantity item

helper :: [(Integer, Integer, String)] -> (Integer, Integer, String) -> String
helper [] extra = getName extra
helper a extra = if calculateAllItemsCost(head a) > calculateAllItemsCost extra
                    then helper (tail a) (head a)
                    else helper (tail a) extra

defineItem :: [(Integer, Integer, String)] -> String
defineItem [] = " "
defineItem a = helper (tail a) (head a)


arr :: [(String, Integer, Integer)]
arr = [("Celery", 6, 80), ("Apple", 2, 90)]



