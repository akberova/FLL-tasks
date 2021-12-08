module Task4 (goodsSumArr) where
    -- goodsArr :: ([Char], Integer, Integer) -> (Integer, Integer)
    goodsArr :: [([Char], Integer, Integer)] -> Integer ->Integer 

    goodsSum :: ([Char], Integer, Integer) -> Integer 
    goodsSum (name, price, quantity) = price * quantity


    goodsArr [] sum = sum
    goodsArr arr sum = goodsArr(tail arr) (sum + goodsSum(head arr))

    goodsSumArr :: [([Char], Integer, Integer)] -> Integer 
    goodsSumArr goods = goodsArr goods 0