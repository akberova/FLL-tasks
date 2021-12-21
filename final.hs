listOfDifference :: (Num a, Integral a) => [a] -> [a]
listOfDifference [] = error "List is empty"
listOfDifference a  | null (tail a) = []
                    | otherwise = if even (head a) && even (head(tail a))
                                then (head a - head(tail a)) : listOfDifference (tail a)
                                else listOfDifference (tail a)


checkElem :: Integral a => [a] -> [Bool]
checkElem [] = error "List is empty"
checkElem a = helper a b c
                where
                    b = listOfDifference a
                    c = head b
                    helper list dif to  | null (tail dif) = [to `elem` list]
                                        | otherwise = if to `elem` list
                                                        then True : helper list (tail dif) (head(tail dif))
                                                        else False : helper list (tail dif) (head(tail dif))

lengthList :: [a] -> Int
lengthList [] = 0
lengthList a | null (tail a) = 1
             | otherwise = 1 + lengthList(tail a)

minElemInList :: (Ord a, Integral a) => [a] -> a
minElemInList [] = error "List is empty"
minElemInList a = helper a res
            where
                res = head a
                helper list result  | null (tail list) = if result > head list
                                                            then head list
                                                            else  result
                                    | otherwise = if result > head list
                                                    then helper (tail list) (head list)
                                                    else helper (tail list) result

listOfMultiply :: Num a => [a] -> [a]
listOfMultiply [] = error "List is empty"
listOfMultiply a | null (tail a) = []
                 | otherwise = (head a * head (tail a)) : listOfMultiply (tail a)


minDif :: (Ord a, Integral a) => [a] -> a
minDif [] = error "error"
minDif a = minElemInList dif
            where
                dif = listOfDifference a

lengthDifList :: Integral a => [a] -> Int
lengthDifList [] = 0
lengthDifList a = lengthList dif
                    where
                        dif = listOfDifference a

