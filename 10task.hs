acc :: [([Char], Int)]
acc = []

sort :: [([Char], Int)] -> [([Char], Int)] -> [([Char], Int)]
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

sortList :: [([Char], Int)] -> [([Char], Int)]
sortList = sort acc
-- sortList [("A",2.0),("B",3.0),("C",1.1)]

<interactive>:14:16: error:
    • No instance for (Fractional Int) arising from the literal ‘2.0’
    • In the expression: 2.0
      In the expression: ("A", 2.0)
      In the first argument of ‘sortList’, namely
        ‘[("A", 2.0), ("B", 3.0), ("C", 1.1)]’
-- Средний балл не целочисленн        
