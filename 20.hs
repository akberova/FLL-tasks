f1 :: (Num a) => a -> [a] -> [a]
f1 n list = map (+ n) list

f2 :: (Num a) => a -> [a] -> [a]
f2 n list = map (* n) list

f3 :: a -> [b] -> [(b, a)]
f3 n list = map (flip (,) n) list

f4 :: [a] -> [[a]]
f4 list = map helper list
    where helper a = [a]

-- f5 // TODO

-- f6 :: (Num a) => [a] -> [a]
-- f6 list = 

-- f7
