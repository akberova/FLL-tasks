bubbleSort :: [String]->[String]
bubbleSort [] = []
bubbleSort s = case bubbleSort' s of
               t | t == s -> t
                 | otherwise -> bubbleSort t
  where bubbleSort' (x:x2:xs) | x > x2 = x2:(bubbleSort' (x:xs))
                  | otherwise = x:(bubbleSort' (x2:xs))
        bubbleSort' s = s

main = print (bubbleSort ["algebra","gose","zoo","storm","order", "white","dildo"])

