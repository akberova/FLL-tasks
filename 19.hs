maxList :: Ord a => [[a]] -> [a]
maxList list = map helper1 list

helper1 :: Ord a => [a] -> a
helper1 list = helper2 (tail list) (head list)

helper2 :: Ord a => [a] -> a -> a
helper2 [] max = max
helper2 list max = if (head list) > max then helper2 (tail list) (head list)
                   else helper2 (tail list) max