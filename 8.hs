sort :: [Int] -> [Int]
sort arr = helper arr 0 0

helper :: [Int] -> Int -> Int -> [Int]
helper arra i j | j == (length arra - 1) = arra
                | i == (length arra - j - 1) = helper arra 0 (j + 1)
                | otherwise = let element = arra !! i
                                  nextElement = arra !! (i + 1)
                                  left = take i arra
                                  right = drop (i + 2) arra
                              in if (element > nextElement) then helper (left ++ [nextElement, element] ++ right) (i + 1) j
                                 else helper arra (i + 1) j