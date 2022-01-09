a = [
    [1,2,3,4,5,6,7],
    [1,2,3,4,5,6,7],
    [1,2,3,4,5,6,7],
    [1,2,3,4,5,6,7,8]]

maximum' :: [Integer] -> Integer
maximum' [x] = x
maximum' (x:xs)
 | maximum' xs > x = maximum' xs
 | otherwise = x

main = print $ maximum' $ map maximum' a
