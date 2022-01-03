--task1
task1 :: Num a => [a] -> a -> [a]
task1 list num = map (+num) list

main = print(task1 [1,2,3,4,3,2,1] 2)

--task2
task2 :: Num a => [a] -> a -> [a]
task2 list num = map (*num) list

main = print(task2 [1,2,3,4,3,2,1] 2)

--task3
task3 :: Num a => [a] -> a -> [(a, a)]
task3 list num = map (helper num) list

helper :: Num a => a -> a -> (a, a)
helper a b = (b, a)

main = print(task3 [1,2,3,4,3,2,1] (-2))

--task4
task4 :: Num a => [a] -> [[a]]
task4 list = map helper list

helper :: Num a => a -> [a]
helper a = [a]

main = print(task4 [1,2,3,4,3,2,1])

--task5
task5 :: [Int] -> [(Int, Int)]
task5 list = helper list []

helper :: [Int] -> [(Int, Int)] -> [(Int, Int)]
helper list res | list == [] = res
                | otherwise = helper (filter (/= head list) list) (res ++ [((head list), (length(filter (== head list) list)))])

main = print(task5 [1,2,3,4,3,2,1])

--task6
task6 :: [Int] -> [Int]
task6 list  | (tail list) == [] = []
            | otherwise = ((head list) - (head (tail list))) : (task6 (tail list))

main = print(task6 [1,2,3,4,3,2,1])

--task7
task7 :: [Int] -> [Int]
task7 list  | (tail list) == [] = []
            | otherwise = ((head list) + (head (tail list))) : (task7 (tail list))

main = print(task7 [1,2,3,4,3,2,1])