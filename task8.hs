bubbleSort :: Ord a => [a] -> [a]
bubbleSort s = case bubbleSort' s of
               t | t == s -> t
                 | otherwise -> bubbleSort t
  where bubbleSort' (x:x2:xs) | x > x2 = x2:(bubbleSort' (x:xs))
                  | otherwise = x:(bubbleSort' (x2:xs))
        bubbleSort' s = s

main = print (bubbleSort [9,2,6,7,3,1,8,3,0,5,4,3])