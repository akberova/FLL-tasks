module Task10
    ( 
        sortArray
    ) where

    sortArray :: [([Char], Float)] -> [([Char], Float)]
    sortArray arr = helper arr 0 0

    helper :: [([Char], Float)] -> Int -> Int -> [([Char], Float)]
    helper arr i j | j == (length arr - 1) = arr
                   | i == (length arr - j - 1) = helper arr 0 (j + 1)
                   | otherwise =    let
                                        elem = arr !! i
                                        next = arr !! (i + 1)
                                        left = take i arr
                                        right = drop (i + 2) arr
                                    in
                                        if ((snd elem) < (snd next)) then
                                            helper (left ++ [next, elem] ++ right) (i + 1) j
                                        else
                                            helper arr (i + 1) j