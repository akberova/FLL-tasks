first :: (Num a) => a -> [a] -> [a]
first n list = map (+ n) list

second :: (Num a) => a -> [a] -> [a]
second n list = map (* n) list

third :: a -> [a] -> [(a, a)]
third n list = map (flip (,) n) list

fouth :: [a] -> [[a]]
fouth list = map helper list
    where helper a = list

fifth :: [Int] -> [(Int, Int)]
fifth list = helper list []

helper :: [Int] -> [(Int, Int)] -> [(Int, Int)]
helper [] res = res
helper list res = helper (filter (/= head list) list) (res ++ [((head list), (length(filter (== head list) list)))])

sixth :: [Int] -> [Int]
sixth list = if (tail list) == [] then [] else ((head list) - (head (tail list))) : (sixth (tail list))


seventh :: [Int] -> [Int]
seventh list = if (tail list) == [] then [] else ((head list) + (head (tail list))) : (seventh (tail list))


