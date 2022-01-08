acc :: [[Char]]
acc = []

sort :: [[Char]] -> [[Char]] -> [[Char]]
sort acc wordList | null wordList = acc
                  | head wordList == "" = sort acc (tail wordList)
                  | null acc = sort [head wordList] (tail wordList)
                  | (head wordList > head acc) && (head wordList > last acc) = sort (acc ++ [head wordList]) (tail wordList)
                  | head wordList < head acc = sort (head wordList : acc) (tail wordList)
                  | otherwise = findPos wordList (tail acc) leftPart
                  where
                      leftPart = [head acc]
                      findPos wordList acc leftPart | not (null wordList) && (head wordList < head acc) = sort ((leftPart ++ [head wordList]) ++ acc) (tail wordList)
                                                    | otherwise = findPos wordList (tail acc) (leftPart ++ [head acc])

sortList :: [[Char]] -> [[Char]]
sortList = sort acc