f1 :: (Num a) => a -> [a] -> [a]
f1 n list = map (+ n) list

f2 :: (Num a) => a -> [a] -> [a]
f2 n list = map (* n) list

f3 :: a -> [b] -> [(b, a)]
f3 n list = map (flip (,) n) list

f4 :: [a] -> [[a]]
f4 list = map helper list
    where helper a = [a]

f5 :: (Eq a) => [a] -> [(a, Int)]
f5 list = helper [] list
    where
        helper result [] = result
        helper result remaining = helper (result ++ [flip (,) (length (filter (== (head remaining)) remaining)) (head remaining)]) 
                                         (filter (/= (head remaining)) remaining)

genericF6_F7 :: (Num a) => (a -> a -> a) -> [a] -> [a]
genericF6_F7 op list | length(list) <= 1 = error "List must have at least 2 elements" 
                     | otherwise = helper (length(list) - 2) [] remaining a b
                     where
                     a = head(list)
                     b = head(tail(list))
                     remaining = tail(tail(list))
                     helper toIterate result buf a b
                         | toIterate == 0 = result ++ [op a b]
                         | otherwise = helper (toIterate - 1) (result ++ [op a b]) (tail(buf)) b (head(buf))

f6 :: (Num a) => [a] -> [a]
f6 = genericF6_F7 (-) 

f7 :: (Num a) => [a] -> [a]
f7 = genericF6_F7 (+) 
