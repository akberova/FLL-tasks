addition :: (Num a) => a -> [a] -> [a]
addition n list = map (+ n) list

multipl :: (Num a) => a -> [a] -> [a]
multipl n list = map (* n) list

pairList :: a -> [b] -> [(b, a)]
pairList n list = map (flip (,) n) list

listList :: [a] -> [[a]]
listList list = map helper list where helper a = [a]

entry :: (Eq a) => [a] -> [(a, Int)]
entry list = helper [] list where
    helper result [] = result
    helper result remaining = helper (result ++ [flip (,) (length (filter (== (head remaining)) remaining)) (head remaining)]) (filter (/= (head remaining)) remaining) 

sumOrDef :: (Eq a, Num a) => (a -> a -> a) -> [a] -> [a]
sumOrDef fun list = fst (foldl (\(res, val) x -> (res ++ [(fun val) x], x)) ([], head list) (tail list))