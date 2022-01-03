import Data.Function ( on ) 

g :: Integer -> Integer -> Integer
g = (*) 

h :: (a, b) -> b
h (a,b) = b

multSecond :: (a, Integer) -> (a, Integer) -> Integer
multSecond = g `on` h

--example multSecond ('A',2) ('E',7)