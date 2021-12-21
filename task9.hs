sort :: [String] -> [String]
sort nums = sortLoop nums nums

sortLoop :: [String] -> [String] -> [String]
sortLoop nums i | i == [] = nums
                | otherwise = sortLoop (sortHelp (tail nums) (head nums)) (tail i)

sortHelp :: [String] -> String -> [String]
sortHelp nums num   | nums == [] = [num]
                    | otherwise = fst (wordComparison num (head nums) num (head nums)) : sortHelp (tail nums) (snd (wordComparison num (head nums) num (head nums)))

wordComparison :: String -> String -> String -> String -> (String, String)
wordComparison first second acum1 acum2 | acum1 == "" = (first, second)
                                        | acum2 == "" = (second, first)
                                        | head acum1 < head acum2 = (first, second)
                                        | head acum1 > head acum2 = (second, first)
                                        | head acum1 == head acum2 = wordComparison first second (tail acum1) (tail acum2)

main = print(sort ["bab", "baa", "aabb", "aabc", "abc", "aaa", "aaaa"])