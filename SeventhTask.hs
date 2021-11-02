getSentenceList :: [Char] -> [[Char]]
getSentenceList string = getSentenceListHelper string "" []

getSentenceListHelper :: [Char] -> [Char] -> [[Char]] -> [[Char]]
getSentenceListHelper "" accum list = list ++ [accum]
getSentenceListHelper string accum list = 
    if ((head string) == '.') then
        getSentenceListHelper (tail string) "" (list ++ [accum])
    else
        getSentenceListHelper (tail string) (accum ++ [(head string)]) list


-- getWordsList "Test. string. with. words"