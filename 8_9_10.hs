removeElemFromList :: (Eq a) => [a] -> a -> [a]
removeElemFromList [] _ = []
removeElemFromList list elem = helper list []
    where
        helper [] result = result
        helper remaining result = if head(remaining) == elem then
                                      result ++ tail(remaining)
                                  else
                                      helper (tail(remaining)) (result ++ [head(remaining)])

getElemGeneric :: (Ord a) => (a -> a -> Bool) -> [a] -> a
getElemGeneric _ [] = error "Empty list"
getElemGeneric fun list = helper remaining first
    where
        first = head(list)
        remaining = tail(list)
        helper [] current = current
        helper remaining current = if fun (head(remaining)) current then 
                                       helper (tail(remaining)) (head(remaining)) 
                                   else 
                                       helper (tail(remaining)) (current)

getMinElem :: (Ord a) => [a] -> a
getMinElem list = getElemGeneric (<) list

getMaxElem :: (Ord a) => [a] -> a
getMaxElem list = getElemGeneric (>) list

sortListGeneric :: (Ord a, Eq a) => (a -> a -> Bool) -> [a] -> [a]
sortListGeneric fun list = helper list []
    where
        helper [] sorted = sorted
        helper remaining sorted = helper (removeElemFromList (remaining) (getElemGeneric (fun) (remaining)))
                                         (sorted ++ [getElemGeneric (fun) (remaining)]) 

-- 8 task
sortListDescending :: [Integer] -> [Integer]
sortListDescending list = sortListGeneric (>) list

-- 9 task
sortWords :: [String] -> [String]
sortWords list = sortListGeneric (<) list

-- 10 task
getSecond (a,b) = b

compFun :: (String, Float) -> (String, Float) -> Bool
compFun a b = getSecond a > getSecond b

sortStudents :: [(String, Float)] -> [(String, Float)]
sortStudents list = sortListGeneric (compFun) list

-- testing --
assert :: Bool -> Bool
assert False = error "Assertion failed"
assert True  = True

test8     = assert((sortListDescending [2, 9, 0, -2, -4, 921, 842, 2]) == [921, 842, 9, 2, 2, 0, -2,-4])
test9     = assert((sortWords ["a", "xyz", "abc", "aaa"]) == ["a", "aaa", "abc", "xyz"])
test10    = assert((sortStudents [("Ivanov", 3.5), ("Petrov", 4.76), ("Chelebos", 4.25)]) == [("Petrov", 4.76), ("Chelebos", 4.25), ("Ivanov", 3.5)])
