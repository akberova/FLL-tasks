first_add :: Num a => [a] -> a -> [a]
first_add list x = map (+ x) list

second_multi :: Num a => [a] -> a -> [a]
second_multi list x = map (* x) list

connector :: Num a => a -> a -> (a, a)
connector x y = (y, x)

third_connect :: Num a => [a] -> a -> [(a, a)]
third_connect list x = map (connector x) list

creator :: Num a => a -> [a]
creator x = [x]

fourth_listOflist :: Num a => [a] -> [[a]]
fourth_listOflist list = map creator list

newLister :: [Int] -> [(Int, Int)] -> [(Int, Int)]
newLister x result | x == [] = result
                   | otherwise = newLister (filter (/= head x) x) (result ++ [connector(length(filter (==head x) x)) (head x)])

fifth_newList :: [Int] -> [(Int, Int)]
fifth_newList x = newLister x []

sixth_sub :: [Int] -> [Int]
sixth_sub x  | (tail x) == [] = []
            | otherwise = ((head x) - (head (tail x))) : (sixth_sub (tail x))

seventh_sumOfelem :: [Int] -> [Int]
seventh_sumOfelem x | (tail x) == [] = []
            | otherwise = ((head x) + (head (tail x))) : (seventh_sumOfelem (tail x))
