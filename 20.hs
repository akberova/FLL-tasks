task1 :: Int -> [Int] -> [Int]
task1 a [] = error "List is empty"
task1 a list = map (+a) list

--example task1 5 [1,2,3]

task2 :: Int -> [Int] -> [Int]
task2 a [] = error "List is empty"
task2 a list = map (*a) list

--example task2 2 [1,2,3]

connect :: Int -> Int -> (Int, Int)
connect a b = (b, a)

task3 :: Int -> [Int] -> [(Int, Int)]
task3 a [] = error "List is empty"
task3 a list = map (connect a) list

--example task3 9 [1,2,3]

ss :: a -> [a]
ss a = [a]

task4 :: [a] -> [[a]]
task4 = map ss

--example task4 [1,2,3]

helperT5 :: [Int] -> [(Int, Int)] -> [(Int, Int)]
helperT5 a result = if null a then result
                                else helperT5 (filter (/= head a) a) (result ++ [connect(length(filter (==head a) a)) (head a)])

task5 :: [Int] -> [(Int, Int)]
task5 [] = error "List is empty"
task5 a = helperT5 a []

--example task5 [1,2,1,3,3,5,1]

task6 :: [Int] -> [Int]
task6 [] = error "List is empty"
task6 a  | null (tail a) = []
         | otherwise = (head a - head(tail a)) : task6 (tail a)

--example task6 [1,2,1,3,3,5,1]

task7 :: [Int] -> [Int]
task7 [] = error "List is empty"
task7 a  | null (tail a) = []
         | otherwise = (head a + head(tail a)) : task7 (tail a)

--example task7 [1,2,1,3,3,5,1]