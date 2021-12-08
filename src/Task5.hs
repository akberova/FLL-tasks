module Task5(profit) where

    goodsSum :: ([Char], Integer, Integer) -> Integer 
    goodsSum (name, price, quantity) = price * quantity

    goodsName :: ([Char], Integer, Integer) -> [Char]
    goodsName (name, price, quantity) = name

    matching :: [([Char], Integer, Integer)] -> ([Char], Integer, Integer) -> ([Char], Integer, Integer)
    matching[] max = max
    matching arr max = let
        maxName = goodsName(head arr)
        maxPrice = goodsSum(head arr)
        in matching(tail arr) (
            if maxPrice > goodsSum max 
                then head arr 
                else max
                )
                
    profit :: [([Char], Integer, Integer)] -> ([Char], Integer, Integer)
    profit goods = matching goods ("", 0,0)