separateWords :: [Char] -> [Char] -> [[Char]] -> [[Char]]
separateWords "" sentence result = result
separateWords text sentence result = if ((head text) == '.') then separateWords (tail text) "" (result ++ [sentence]) else separateWords (tail text) (sentence ++ [(head text)]) result


getResults :: [Char] -> [[Char]]
getResults text = separateWords text "" []