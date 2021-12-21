getSentences :: [Char] -> [[Char]]
getSentences text = func text ""

func :: [Char] -> [Char] -> [[Char]]
func text acum  | text == "" = [acum]
                | head text == '.' = acum : func (tail text) ""
                | head text /= '.' = func (tail text) (acum ++ [head text])

main = print(getSentences "text1 text2 text3. ifgsi adkhd dawd wd dwaudih.d wa")