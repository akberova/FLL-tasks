getWords :: [Char] -> [[Char]]
getWords text = func text ""

func :: [Char] -> [Char] -> [[Char]]
func text acum  | text == "" = [acum]
                | head text == ' ' = acum : func (tail text) ""
                | head text /= ' ' = func (tail text) (acum ++ [head text])

main = print(getWords "text1 text2 text3")