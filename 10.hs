
getGrade :: (a, b) -> b
getGrade(name, grade) = grade

maxElemInList :: [(String, Float)] -> (String, Float)
maxElemInList [] = error "List is empty"
maxElemInList a = helper a res
            where
                res = head a
                helper list result  | null (tail list) = if getGrade result < getGrade (head list) 
                                                            then head list
                                                            else  result
                                    | otherwise = if  getGrade result < getGrade (head list) 
                                                    then helper (tail list) (head list)
                                                    else helper (tail list) result

rmElemFromList :: (String, Float) -> [(String, Float)] -> [(String, Float)]
rmElemFromList _ [] = []
rmElemFromList x a = if head a == x
                        then tail a
                        else helper x a result
                            where
                                result = []
                                helper elem list res = if head list == elem
                                                            then res ++ tail list
                                                            else helper elem (tail list) (res++[head list])


mySort :: [(String, Float)] -> [(String, Float)]
mySort [] = error "List is empty"
mySort a = helper a result
            where
                result = []
                helper :: [(String, Float)] -> [(String, Float)] -> [(String, Float)]
                helper list res = if null list
                                    then res
                                    else helper (rmElemFromList (maxElemInList list) list) (res ++ [maxElemInList list])


a :: [(String, Float)]
a = [("Lukoshenko",1.5), ("Petrov",2.13), ("Sidorov",3.25)]