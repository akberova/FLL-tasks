import Data.Char (ord)

sort :: [[Char]] -> [[Char]]
sort inputArr = sortHelper inputArr 0 0

sortHelper :: [[Char]] -> Int -> Int -> [[Char]]
sortHelper arr i j | j == (length arr - 1) = arr
                   | i == (length arr - j - 1) = sortHelper arr 0 (j + 1)
                   | otherwise = 
    let
        a = arr !! i
        b = arr !! (i + 1)
        left = take i arr
        right = drop (i + 2) arr
    in
        if (a > b) then
            sortHelper (left ++ [b, a] ++ right) (i + 1) j
        else
            sortHelper arr (i + 1) j

-- sort ["haskell", "piss", "of", "shit", "and", "i", "hate", "this", "fucking", "not language"]