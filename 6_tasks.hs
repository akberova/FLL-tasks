helper:: [Char] -> [Char] -> [[Char]] -> [[Char]]
helper "" word list = list ++ [word]
helper string word list | head string == ' ' = helper (tail string) "" (list ++ [word])
                        | head string /= ' ' = helper (tail string) (word ++ [(head string)]) list

splitText :: [Char] -> [[Char]]
splitText text = helper text "" []
