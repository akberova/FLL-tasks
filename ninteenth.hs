maxList :: Ord a => [[a]] -> ([a], a)
maxList list = helper list []

helper :: Ord a => [[a]] -> [a] -> ([a], a)

helper [] result = (result, maximum result)
helper list result = helper (tail list) (result ++ (search (tail (head list)) (head (head list))))

search :: Ord a => [a] -> a -> [a]

search [] res = [res]
search list res = if (head list) > res then search (tail list) (head list) else search (tail list) res
