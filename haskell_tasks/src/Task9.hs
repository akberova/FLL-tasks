module Task9
    ( 
        bubbleSortWord
    ) where

    bubbleSortWord:: Ord a => [a] -> [a]
    bubbleSortWord = foldr swapTill []

    swapTill x [] = [x]
    swapTill x (y:xs) = min x y : swapTill (max x y) xs