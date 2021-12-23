getListOfMax :: Ord a => [[a]] -> [a]
getListOfMax [] = error "Error! Can't get max from empty list, sorry =("
getListOfMax list = map getMaxFromList list

getMaxFromList :: Ord a => [a] -> a
getMaxFromList list = getMaxFromListHelper (tail list) (head list)

getMaxFromListHelper :: Ord a => [a] -> a -> a
getMaxFromListHelper [] max = max
getMaxFromListHelper list max = 
    if (head list) > max then 
        getMaxFromListHelper (tail list) (head list)
    else 
        getMaxFromListHelper (tail list) max