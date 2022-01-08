module Task19
    ( 
        getMaxList
    ) where

getMaxList :: Ord a => [[a]] -> [a]
getMaxList [] = error "Empty list"
getMaxList list = map getMax list

getMax :: Ord a => [a] -> a
getMax [x] = x
getMax (x:xs)
    | (getMax xs) > x = getMax xs
    | otherwise = x