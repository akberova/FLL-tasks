maximumFromSublists :: Ord a => [[a]] -> ([a], a)
maximumFromSublists list = helper1 list []

helper1 :: Ord a => [[a]] -> [a] -> ([a], a)
helper1 list result | list == [] = (result, head (helper2 (tail result) (head result)))
                    | otherwise = helper1 (tail list) (result ++ (helper2 (tail (head list)) (head (head list))))

helper2 :: Ord a => [a] -> a -> [a]
helper2 list res    | list == [] = [res]
                    | (head list) > res = helper2 (tail list) (head list)
                    | otherwise = helper2 (tail list) res

main = print(maximumFromSublists [[2,1,7,2,6],[4,-3,0,11],[11,8,-4],[-3,3,1,-5,0]])