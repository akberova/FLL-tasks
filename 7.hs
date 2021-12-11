getList :: [Char] -> [[Char]]
getList string = helper string "" []

helper :: [Char] -> [Char] -> [[Char]] -> [[Char]]
helper "" sentence list = list ++ [sentence]
helper string sentence list = if ((head string) == '.') then helper (tail string) "" (list ++ [sentence])
                              else helper (tail string) (sentence ++ [(head string)]) list