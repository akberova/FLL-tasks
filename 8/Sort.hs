module Sort where

    sortHelper :: [Integer] -> Integer -> [Integer] -> (Integer,[Integer])
    sortHelper [x] n r = (n,r++[x])
    sortHelper (x1:x2:xs) n r | (x2 <= x1) = sortHelper (x2:xs) n (r ++ [x1]) 
                              | otherwise = sortHelper (x1:xs) (n+1) (r ++ [x2])
                   
    sort :: [Integer] -> [Integer]
    sort list = if (g == 0) then xx else sort xx
           where (g,xx) = sortHelper list 0 []