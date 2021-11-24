module Task8
    ( 
        bubbleSort
    ) where

    bubbleSort:: Ord a => [a] -> [a]
    bubbleSort = foldr swapTill []

    swapTill x [] = [x]
    swapTill x (y:xs) = max x y : swapTill (min x y) xs