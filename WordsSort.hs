merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x <= y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys
mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs
    = merge (mergeSort top) (mergeSort bottom)
    where
    (top, bottom) = splitAt (length xs `div` 2) xs
main = putStrLn $ show $ mergeSort ["apple","fefu","aria","zoo"]