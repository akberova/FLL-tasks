--1
concatenation :: [a] -> [a] -> [a]
concatenation list1 list2 = list1 ++ list2

--2
reverses :: [a] -> [a]
reverses [] = error "List is empty"
reverses xs = rev xs [] 
  where  rev    []  ys = ys
         rev (x:xs) ys = rev xs (x:ys)

--3
printList :: Show a => [a] -> IO ()
printList = mapM_ print

--4
counting :: Int -> [Int] -> Int
counting n [] = error "List is empty"
counting n list = helper n list 0

helper :: Int -> [Int] -> Int -> Int
helper n [] count = count
helper n list count = if (head list) == n then helper n (tail list) (count + 1) else helper n (tail list) count

--5
isSublist :: Eq a => [a] -> [a] -> Bool
isSublist a b = all (`elem` b) a

--6
-- ! Необходимо передавать параметр n (длина подсписка) 
-- input> sublist 3 [1,2,3,4,5] -> [1,2,3]
sublist :: [Int] -> [Int]
sublist [] = error "List is empty"
sublist list = if (tail list) == [] then list else (tail list)

--7
delRepet :: (Eq a) => [a] -> [a]
delRepet [] = error "List is empty"
delRepet list = del list

del :: (Eq a) => [a] -> [a]
del [] = [] 
del (x:xs) | x `elem` xs = del xs
           | otherwise = x : del xs
