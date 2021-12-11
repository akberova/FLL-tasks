getList :: [Char]->[[Char]]
getList string = helper string "" []

helper :: [Char] -> [Char] -> [[Char]] -> [[Char]]
helper "" word list = list ++ [word]
helper string word list | ((head string) == ' ') = helper (tail string) "" (list ++ [word])
                         | otherwise = helper (tail string) (word ++ [(head string)]) list