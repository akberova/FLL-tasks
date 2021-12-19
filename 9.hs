sort :: [[Char]] -> [[Char]]
sort arr = helper arr 0 0

helper :: [[Char]] -> Int -> Int -> [[Char]]
helper arra i j | j == (length arra - 1) = arra
                | i == (length arra - j - 1) = helper arra 0 (j + 1)
                | otherwise = let a = arra !! i
                                  b = arra !! (i + 1)
                                  left = take i arra
                                  right = drop (i + 2) arra
                              in if (a > b) then helper (left ++ [b, a] ++ right) (i + 1) j
                                 else helper arra (i + 1) j