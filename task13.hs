import Data.Function

multSecond :: (Char, Int) -> (Char, Int) -> Int
multSecond = g `on` h

g = (*)
h = (snd)

main = print(multSecond ('A', 2) ('E', 7))