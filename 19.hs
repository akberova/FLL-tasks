maximumFromSublists :: Ord a => [[a]] -> ([a], a)
maximumFromSublists list = helper list []

helper :: Ord a => [[a]] -> [a] -> ([a], a)
helper list result | null (tail list) = (result ++ [maximum (head list)], maximum (result ++ [maximum (head list)]))
                   | otherwise = helper (tail list) (result ++ [maximum (head list)])

a = [[1,2,1,3],[3,5,1],[5,8,-10],[-2,6,1,-8,0]]