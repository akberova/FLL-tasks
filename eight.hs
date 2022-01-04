selectionsort :: (Ord a) => [a] -> [a]
selectionsort [] = []
selectionsort x  = maxx : selectionsort (change maxx x)
                   where maxx = maximum x
                         change _ [] = []    
                         change z (y:ys) | (z==y) = ys
                                         | otherwise = y : (change z ys)