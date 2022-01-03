maxElemInList :: (Ord a, Integral a) => [a] -> a
maxElemInList [] = error "List is empty"
maxElemInList a = helper a res
            where
                res = head a
                helper list result  | null (tail list) = if result < head list
                                                            then head list
                                                            else  result
                                    | otherwise = if result < head list
                                                    then helper (tail list) (head list)
                                                    else helper (tail list) result

rmElemFromList :: Eq a => a -> [a] -> [a]
rmElemFromList _ [] = []
rmElemFromList x a = if head a == x
                        then tail a
                        else helper x a result
                            where
                                result = []
                                helper elem list res = if head list == elem
                                                            then res ++ tail list
                                                            else helper elem (tail list) (res++[head list])


mySort :: Integral a => [a] -> [a]
mySort [] = error "List is empty"
mySort a = helper a result
            where
                result = []
                helper :: Integral a => [a] -> [a] -> [a]
                helper list res = if null list
                                    then res
                                    else helper (rmElemFromList (maxElemInList list) list) (res ++ [maxElemInList list])

a :: [Integer]
a = [5,1,8,-4,7,7]

--example mySort a