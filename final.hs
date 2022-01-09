--Var: 11

--task1
task1 :: [Int] -> [Int] -> [Int]
task1 mas1 mas2 = sort (mas1 ++ mas2)

sort :: [Int] -> [Int]
sort nums = sortLoop nums nums

sortLoop :: [Int] -> [Int] -> [Int]
sortLoop nums i | i == [] = nums
                | otherwise = sortLoop (sortHelp (tail nums) (head nums)) (tail i)

sortHelp :: [Int] -> Int -> [Int]
sortHelp nums num   | nums == [] = [num]
                    | head nums < num = head nums : sortHelp (tail nums) num
                    | otherwise = num : sortHelp (tail nums) (head nums)

main = print(task1 [3, 2, 4, 8, 3] [1, 5, 7, 0, 4])

--task2
task2 :: [Int] -> [Int]
task2 nums = invert nums []

invert :: [Int] -> [Int] -> [Int]
invert nums inNums  | nums == [] = inNums
                    | otherwise = invert (tail nums) ((head nums) : inNums)


main = print(task2 [3, 2, 4, 8, 3, 1, 5, 7, 0, 4])

--task3
main = print([3, 2, 4, 8, 3, 1, 5, 7, 0, 4])

--task4
--! task4 [1,1,1,2,2,3,3,3,4,4,4,4]
-- >>[3,2,1,2,1,3,2,1,4,3,2,1]
-- Некорректное поведение. Ожидается [3,3,3,2,2,3,3,3,4,4,4,4]
task4 :: [Int] -> [Int]
task4 list = helper list []

helper :: [Int] -> [Int] -> [Int]
helper list res | list == [] = res
                | otherwise = helper (tail list) (res ++ [(length(filter (== head list) list))])

main =  print([3,2,4,8,3,1,5,7,0,4,2,2,8]) >> print(task4 [3,2,4,8,3,1,5,7,0,4,2,2,8])

--task5
task5 :: [Int] -> [Int] -> [Char]
task5 list1 list2 = helper (task2 list1) (task2 list2)

helper :: [Int] -> [Int] -> [Char]
helper list1 list2  | list2 == [] = "yes"
                    | list1 == [] = "no"
                    | head list1 == head list2 = helper (tail list1) (tail list2)
                    | otherwise = "no"

main =  print(task5 [3,2,4,8,3,1,5,7,0,4,2,2,8] [2,2,8])

--task6
task6 :: [Int] -> Int -> [Int]
task6 list num = helper list num

helper :: [Int] -> Int -> [Int]
helper list num | list == [] = []
                | head list == num = list
                | otherwise = helper (tail list) num

main =  print(task6 [3,2,4,8,3,1,5,7,0,4,2,2,8] 4)

--task7
task7 :: [Int] -> [Int]
task7 list = helper list []

helper :: [Int] -> [Int] -> [Int]
helper list res | list == [] = res
                | (filter (== head list) (tail list)) /= [] = helper (filter (/= head list) list) res
                | otherwise = helper (tail list) (res ++ [(head list)])

main =  print(task7 [3,2,4,8,3,1,5,7,0,4,2,2,8])
