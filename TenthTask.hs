sort :: [([Char], Float)] -> [([Char], Float)]
sort inputArr = sortHelper inputArr 0 0

sortHelper :: [([Char], Float)] -> Int -> Int -> [([Char], Float)]
sortHelper arr i j | j == (length arr - 1) = arr
                   | i == (length arr - j - 1) = sortHelper arr 0 (j + 1)
                   | otherwise = 
    let
        elem = arr !! i
        nextElem = arr !! (i + 1)
        left = take i arr
        right = drop (i + 2) arr
    in
        if ((snd elem) < (snd nextElem)) then
            sortHelper (left ++ [nextElem, elem] ++ right) (i + 1) j
        else
            sortHelper arr (i + 1) j

-- sort [("Piss", 46.1), ("Of", 42.6), ("Hate", 58.3), ("I", 65.75), ("Haskell", 0.6)]