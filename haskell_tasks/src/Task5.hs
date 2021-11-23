module Task5
    ( 
        getProfitName
    ) where

    sumProduct:: ([Char], Integer, Integer) -> Integer
    sumProduct (name, value, price) = value * price

    helper:: [([Char], Integer, Integer)] -> ([Char], Integer, Integer) -> ([Char], Integer, Integer)
    helper [] current = current
    helper array current = helper (tail array) (if sumProduct (head array) > sumProduct current then head array else current)

    getProfitName:: [([Char], Integer, Integer)] -> ([Char], Integer, Integer)
    getProfitName products = helper products ("", 0, 0)