getList :: [Char] -> [Char] -> [[Char]] -> [[Char]]
getList "" word result = result ++ [word]
getList text word result = if ((head text) == ' ') then getList (tail text) "" (result ++ [word]) else getList (tail text) (word ++ [(head text)]) result


getResult :: [Char] -> [[Char]]
getResult text = getList text "" []