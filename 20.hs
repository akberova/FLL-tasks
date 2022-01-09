addNumToEach :: Int -> [Int] -> [Int]
addNumToEach x list = map (+ x) list

multiplyEach :: Int -> [Int] -> [Int]
multiplyEach x list = map (+ x) list

connectWith :: Int -> [Int] -> [(Int, Int)]
connectWith x list = map (\a -> (a, x)) list

wrap :: [Int] -> [[Int]]
wrap list = map (\a -> [a]) list

occurences :: [Int] -> [(Int, Int)] -> [(Int, Int)]
occurences remaining result | remaining == [] = result
                               | otherwise = occurences (filter (/= head remaining) remaining) (result ++ connectWith(length(filter (==head remaining) remaining)) [head remaining])

pairProcessing :: (Int -> Int -> Int) -> [Int] -> [Int]
pairProcessing f list | length(list) <= 1 = error "List must have at least 2 elements"
                      | otherwise = helper (length(list) - 2) [] remaining a b
                      where
                          a = head(list)
                          b = head(tail(list))
                          remaining = tail(tail(list))
                          helper toIterate result buffer a b
                            | toIterate == 0 = result ++ [f a b]
                            | otherwise = helper (toIterate - 1) (result ++ [f a b]) (tail(buffer)) b (head(buffer))

sumPair :: [Int] -> [Int]
sumPair = pairProcessing (+)

diffPair :: [Int] -> [Int]
diffPair = pairProcessing (-)

main = print $ sumPair [1,2,3,4,5,6]
