acc :: [([Char], Float)]
acc = []

sort :: [([Char], Float)] -> [([Char], Float)] -> [([Char], Float)]
sort acc studentList | null studentList = acc
                     | checkEr (head studentList) = sort acc (tail studentList)
                     | null acc = sort [head studentList] (tail studentList)
                     | moreThanAcc(head studentList) (head acc) && moreThanAcc(head studentList) (last acc) = sort (acc ++ [head studentList]) (tail studentList)
                     | lessThanAcc (head studentList) (head acc) = sort (head studentList : acc) (tail studentList)
                     | otherwise = findPos studentList (tail acc) leftPart
                     where
                         checkEr (name, avg) = avg == 0 || name == "" || avg < 0
                         moreThanAcc (name, avg) (nameAcc, avgAcc) = avg > avgAcc
                         lessThanAcc (name, avg) (nameAcc, avgAcc) = avg < avgAcc
                         leftPart = [head acc]
                         findPos studentList acc leftPart | not (null studentList) && lessThanAcc (head studentList) (head acc) = sort ((leftPart ++ [head studentList]) ++ acc) (tail studentList)
                                                          | otherwise = findPos studentList (tail acc) (leftPart ++ [head acc])

sortList :: [([Char], Float)] -> [([Char], Float)]
sortList = sort acc