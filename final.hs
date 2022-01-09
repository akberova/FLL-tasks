--The function of checking for repetitions of elements of the set
belongs :: (Eq a) => a -> [a] -> Bool
belongs n [] = False
belongs n (x:xs) | n == x = True
                 | otherwise = belongs n xs

repeated :: (Eq a) => [a] -> Bool
repeated [] = False
repeated (x:xs) | belongs x xs = True
                | otherwise = repeated xs

--first
subset :: (Eq a) => [a] -> [a] -> Bool
subset a b = if (repeated a == True) then error "There can be no duplicate elements in the set" else 
    if (repeated b == True) then error "There can be no duplicate elements in the set" else all (\x -> elem x b) a

--second
-- На этих входных данных выдаёт False
-- equal [1,2,3,4] [4,3,2,1]
equal :: (Eq a) => [a] -> [a] -> Bool
equal [] [] =  True 
equal (x:xs) (y:ys) = if (repeated xs == True) then error "There can be no duplicate elements in the set" else 
    if (repeated ys == True) then error "There can be no duplicate elements in the set" else x == y && equal xs ys
equal _ _ = False

--third
numberOfElements :: (Eq a) => [a] -> Integer
numberOfElements [] = 0
numberOfElements a = if (repeated a == True) then error "There can be no duplicate elements in the set" else 1 + numberOfElements (tail(a))

--fourth
printList list = if (repeated list == True) then error "There can be no duplicate elements in the set" else 
    case list of
    [] -> putStrLn ""
    (x:xs) -> do
        putStrLn $ show x
        printList xs

--fifth
minElem :: (Ord a) => [a] -> (a)
minElem (y:ys) = if (repeated ys == True) then error "There can be no duplicate elements in the set" else 
    foldr (\x (m) -> if (x==m) then (m) 
                                  else if x < m then (x)
                                       else (m)) (y) ys

--sixth
maxElem :: (Ord a) => [a] -> (a)
maxElem (y:ys) = if (repeated ys == True) then error "There can be no duplicate elements in the set" else
    foldr (\x (m) -> if (x==m) then (m) 
                                  else if x > m then (x)
                                       else (m)) (y) ys
-- senevth
https://ru.wikipedia.org/wiki/%D0%9E%D1%82%D0%BD%D0%BE%D1%88%D0%B5%D0%BD%D0%B8%D0%B5_%D1%8D%D0%BA%D0%B2%D0%B8%D0%B2%D0%B0%D0%BB%D0%B5%D0%BD%D1%82%D0%BD%D0%BE%D1%81%D1%82%D0%B8
