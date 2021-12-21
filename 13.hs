import Data.Function 

getSecond (a,b) = b
multSecond = g `on` h
g = (*) 
h = getSecond
