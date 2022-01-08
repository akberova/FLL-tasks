acc :: [a]
acc = []

sort :: (Num a, Ord a) => [a] -> [a] -> [a]
sort acc numberList | null numberList = acc
                    | null acc = sort [head numberList] (tail numberList)
                    | (head numberList < head acc) && (head numberList < last acc) = sort (acc ++ [head numberList]) (tail numberList)
                    | head numberList > head acc = sort (head numberList : acc) (tail numberList)
                    | otherwise = findPos numberList (tail acc) leftPart
                    where
                        leftPart = [head acc]
                        findPos numberList acc leftPart | not (null numberList) && (head numberList > head acc) = sort ((leftPart ++ [head numberList]) ++ acc) (tail numberList)
                                                        | otherwise = findPos numberList (tail acc) (leftPart ++ [head acc])

sortList :: (Num a, Ord a) => [a] -> [a]
sortList = sort acc