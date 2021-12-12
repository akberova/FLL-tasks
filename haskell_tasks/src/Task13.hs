module Task13
    ( 
        multSecond
    ) where

import Data.Function

multSecond :: (Char, Int) -> (Char, Int) -> Int
multSecond = (*) `on` h

h :: (Char, Int) -> Int
h (a, b) = b