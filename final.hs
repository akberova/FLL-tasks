
listOfDifference :: (Num a, Integral a) => [a] -> [a]
listOfDifference [] = []
listOfDifference a  | null (tail a) = []
                    | otherwise = helper first second list
                        where
                            first = head a
                            list = tail a
                            second = head list
                            helper a b list =
                                if even a && even b
                                then (a - b) : listOfDifference list
                                else listOfDifference list

checkElem :: Integral a => [a] -> [Bool]
checkElem [] = []
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
minElemInList [] = error "error"
minElemInList a = helper a res
            where
                res = head a
                helper list result  | null (tail list) = result
                                    | otherwise = if result > head list
                                                    then helper (tail list) (head list)
                                                    else helper (tail list) result

listOfMultiply :: Num a => [a] -> [a]
listOfMultiply [] = []
listOfMultiply a | null (tail a) = []
                 | otherwise = (head a * head (tail a)) : listOfMultiply (tail a)


-- minDif :: (Ord a, Integral a) => [a] -> a
-- minDif [] = error "error"
-- minDif a = helper b res
--             where
--                 b = listOfDifference a
--                 res = head b
--                 helper list result  | null (tail list) = result
--                                     | otherwise = if result > head list
--                                                     then helper (tail list) (head list)
--                                                     else helper (tail list) result

-- lengthDifList :: Integral a => [a] -> Int
-- lengthDifList [] = 0
-- lengthDifList a = lengthList dif
--                     where
--                         dif = listOfDifference a

