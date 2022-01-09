separateWords :: [Char] -> [Char] -> [[Char]] -> [[Char]]
separateWords "" word result = result ++ [word]
separateWords text word result = if ((head text) == ' ') then separateWords (tail text) "" (result ++ [word]) else separateWords (tail text) (word ++ [(head text)]) result


getResults :: [Char] -> [[Char]]
getResults text = separateWords text "" []
