getWordsList :: [Char] -> [[Char]]
getWordsList string = getWordsListHelper string "" []

getWordsListHelper :: [Char] -> [Char] -> [[Char]] -> [[Char]]
getWordsListHelper "" accum list = list ++ [accum]
getWordsListHelper string accum list | ((head string) == ' ') = getWordsListHelper (tail string) "" (list ++ [accum])
                                     | otherwise = getWordsListHelper (tail string) (accum ++ [(head string)]) list
        
-- getWordsList "Test string with words"