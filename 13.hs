import Data.Function

multSecond = g `on` h

g = (*)

h = (snd)

main = print $ multSecond ('A', 2) ('E', 7)