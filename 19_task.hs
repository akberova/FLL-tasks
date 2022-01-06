search_maxList :: Ord a => [[a]] -> ([a], a)
search_maxList list = maxer list []

maxer :: Ord a => [[a]] -> [a] -> ([a], a)
maxer x res | x == [] = (res, head (searcher (tail res) (head res)))
            | otherwise = maxer (tail x) (res ++ (searcher (tail (head x)) (head (head x))))

searcher :: Ord a => [a] -> a -> [a]
searcher x res | x == [] = [res]
               | (head x) > res = searcher (tail x) (head x)
               | otherwise = searcher (tail x) res
