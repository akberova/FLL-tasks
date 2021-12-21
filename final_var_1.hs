addToList :: [a] -> a -> [a]
addToList list elem = list ++ [elem]

existsInList :: (Eq a) => [a] -> a -> Bool
existsInList [] elem = False 
existsInList list elem = if head(list) == elem then True else existsInList (tail(list)) elem

lengthOfList :: [a] -> Integer
lengthOfList [] = 0
lengthOfList list = 1 + lengthOfList (tail(list))

getElemGeneric :: (Ord a) => (a -> a -> Bool) -> [a] -> a
getElemGeneric _ [] = error "Empty list"
getElemGeneric fun list = helper remaining first
    where
        first = head(list)
        remaining = tail(list)
        helper [] current = current
        helper remaining current = if fun (head(remaining)) current then 
                                       helper (tail(remaining)) (head(remaining)) 
                                   else 
                                       helper (tail(remaining)) (current)

getMinElem :: (Ord a) => [a] -> a
getMinElem list = getElemGeneric (<) list

getMaxElem :: (Ord a) => [a] -> a
getMaxElem list = getElemGeneric (>) list

removeElemFromList :: (Eq a) => [a] -> a -> [a]
removeElemFromList [] _ = []
removeElemFromList list elem = helper list []
    where
        helper [] result = result
        helper remaining result = if head(remaining) == elem then
                                      result ++ tail(remaining)
                                  else
                                      helper (tail(remaining)) (result ++ [head(remaining)])

sortList :: (Ord a) => [a] -> [a]
sortList list = helper list []
    where
        helper [] sorted = sorted
        helper remaining sorted = helper (removeElemFromList (remaining) (getMinElem(remaining)))
                                         (sorted ++ [getMinElem(remaining)]) 

sumList :: (Num a) => [a] -> a
sumList [] = 0
sumList list = head(list) + sumList(tail(list))

