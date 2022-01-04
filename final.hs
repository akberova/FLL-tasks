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
