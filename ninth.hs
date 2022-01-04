sortWord :: (Ord a) => [a] -> [a]

sortWord [] = []
sortWord (x:xs) = (sortWord [y | y <- xs, y<=x]) ++ [x] ++ (sortWord [y | y <- xs, y>x])