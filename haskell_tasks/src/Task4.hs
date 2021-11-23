module Task4
    ( 
        sumProducts
    ) where

    sumProduct:: ([Char], Integer, Integer) -> Integer
    sumProduct (name, value, price) = value * price

    sumBuffer:: [([Char], Integer, Integer)] -> Integer -> Integer
    sumBuffer [] sum = sum + 0
    sumBuffer array sum = sumBuffer (tail array) sum + sumProduct(head array)

    sumProducts:: [([Char], Integer, Integer)] -> Integer
    sumProducts products = sumBuffer products 0