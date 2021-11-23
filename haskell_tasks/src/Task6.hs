module Task6
    ( 
        split
    ) where

    split:: Char -> [Char] -> [[Char]]
    split _ "" = []
    split divider string = firstWord : (split divider rest)
        where 
            firstWord = takeWhile (/=divider) string
            rest = drop (length firstWord + 1) string