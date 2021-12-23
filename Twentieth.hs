-- first and second
forAllElems :: Num a => [a] -> a -> (a -> a -> a) -> [a]
forAllElems list x fun = map (fun x) list

-- forAllElems [1,2,3] 5 (+)
-- forAllElems [1,2,3] 5 (*)


-- third
createListOfPair :: [a] -> a -> [(a, a)]
createListOfPair list x = map ((,) x) list

-- fourth
createListOfList :: [a] -> [[a]]
createListOfList list = map createListOfListHelper list

createListOfListHelper :: a -> [a]
createListOfListHelper x = [x]

-- fifth
createListOfPairOnSteroid :: (Eq a, Num a) => [a] -> [(a, Int)]
createListOfPairOnSteroid list = createListOfPairOnSteroidHelper list []

getSame :: (Eq a, Num a) => [a] -> a -> [a]
getSame list x = (filter (== x) list)

removeSame :: (Eq a, Num a) => [a] -> a -> [a]
removeSame list x = (filter (/= x) list)

createListOfPairOnSteroidHelper :: (Eq a, Num a) => [a] -> [(a, Int)] -> [(a, Int)]
createListOfPairOnSteroidHelper [] result = result
createListOfPairOnSteroidHelper list result = 
    let
        x = head list
        sameList = getSame list x
        pair = (,) x (length sameList)
    in
        createListOfPairOnSteroidHelper (removeSame list x) (result ++ [pair])

-- sixth
idkJustLastFunc :: (Eq a, Num a) => (a -> a -> a) -> [a] -> [a]
idkJustLastFunc fun list = fst (foldl (\(res, val) x -> (res ++ [(fun val) x], x)) ([], head list) (tail list))