getList :: [Char] -> [Char] -> [[Char]] -> [[Char]]
getList "" sentence result = result
getList text sentence result = if ((head text) == '.') then getList (tail text) "" (result ++ [sentence]) else getList (tail text) (sentence ++ [(head text)]) result


getResult :: [Char] -> [[Char]]
getResult text = getList text "" []