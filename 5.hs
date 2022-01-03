getCount :: (String , Integer, Integer) -> Integer
getCount (name, count, price) = count

getPrice :: (String, Integer, Integer) -> Integer
getPrice (name, count, price) = price

calculatePrice :: (String, Integer, Integer) -> Integer
calculatePrice tovar = getCount tovar * getPrice tovar

getName :: (String , Integer, Integer) -> String
getName (name, count, price) = name

helper :: [(String, Integer, Integer)] -> (String, Integer, Integer) -> String
helper [] more = getName more
helper a more = if calculatePrice(head a) > calculatePrice more
                    then helper (tail a) (head a)
                    else helper (tail a) more

moreProfit :: [(String, Integer, Integer)] -> String
moreProfit [] = "None"
moreProfit a = helper (tail a) (head a)

a :: [(String, Integer, Integer)]
a = [("Milk", 10, 10), ("Juice", 2, 15)]

--example moreProfit a
