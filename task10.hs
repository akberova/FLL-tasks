sortGrades :: [(String, Float)] -> [(String, Float)]
sortGrades grades = sortLoop grades grades

sortLoop :: [(String, Float)] -> [(String, Float)] -> [(String, Float)]
sortLoop grades i | i == [] = grades
                | otherwise = sortLoop (helper (tail grades) (head grades)) (tail i)

helper :: [(String, Float)] -> (String, Float) -> [(String, Float)]
helper grades num   | grades == [] = [num]
                    | snd (head grades) > snd num = head grades : helper (tail grades) num
                    | otherwise = num : helper (tail grades) (head grades)

main = print(sortGrades [("Andy", 5.0), ("Bill", 3.2), ("Steve", 4.6), ("Daria", 4.5), ("Frank", 4.7)])