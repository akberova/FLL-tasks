sort :: [Int] -> [Int]
sort inputArr = sortHelper inputArr 0 0

sortHelper :: [Int] -> Int -> Int -> [Int]
sortHelper arr i j | j == (length arr - 1) = arr
                   | i == (length arr - j - 1) = sortHelper arr 0 (j + 1)
                   | otherwise = 
    let
        elem = arr !! i
        nextElem = arr !! (i + 1)
        left = take i arr
        right = drop (i + 2) arr
    in
        if (elem > nextElem) then
            sortHelper (left ++ [nextElem, elem] ++ right) (i + 1) j
        else
            sortHelper arr (i + 1) j

-- sort [5, 1, 8, 2, 10, 2, 5, 6, 1, 9, 3]