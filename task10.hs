sort :: [(String, Float)] -> [(String, Float)]
sort nums = sortLoop nums nums

sortLoop :: [(String, Float)] -> [(String, Float)] -> [(String, Float)]
sortLoop nums i | i == [] = nums
                | otherwise = sortLoop (sortHelp (tail nums) (head nums)) (tail i)

sortHelp :: [(String, Float)] -> (String, Float) -> [(String, Float)]
sortHelp nums num   | nums == [] = [num]
                    | snd (head nums) > snd num = head nums : sortHelp (tail nums) num
                    | otherwise = num : sortHelp (tail nums) (head nums)

main = print(sort [("A", 3.4), ("B", 4.2), ("C", 3.6), ("D", 2.5), ("F", 4.7)])