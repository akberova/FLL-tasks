sort :: [Int] -> [Int]
sort nums = sortLoop nums nums

sortLoop :: [Int] -> [Int] -> [Int]
sortLoop nums i | i == [] = nums
                | otherwise = sortLoop (sortHelp (tail nums) (head nums)) (tail i)

sortHelp :: [Int] -> Int -> [Int]
sortHelp nums num   | nums == [] = [num]
                    | head nums > num = head nums : sortHelp (tail nums) num
                    | otherwise = num : sortHelp (tail nums) (head nums)

main = print(sort [3, 2, 4, 8, 3, 1, 5, 7, 0, 4])