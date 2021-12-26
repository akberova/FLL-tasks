import Data.ByteString (count)

countForOne (name, number, price) = number*price

countForAll productList | null productList = 0
                        | otherwise = countForAll (init productList) + countForOne (last productList)