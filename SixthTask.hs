getWordsList :: [Char] -> [[Char]]
getWordsList string = getWordsListHelper string "" []

getWordsListHelper :: [Char] -> [Char] -> [[Char]] -> [[Char]]
getWordsListHelper "" accum list = list ++ [accum]
getWordsListHelper string accum list = 
    if ((head string) == ' ') then
        getWordsListHelper (tail string) "" (list ++ [accum])
    else
        getWordsListHelper (tail string) (accum ++ [(head string)]) list


-- getWordsList "Test string with words"