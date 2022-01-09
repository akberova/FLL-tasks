import Data.List

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]

qsort [] = []
qsort (x:xs) = qsort small ++ mid ++ qsort large
   where
    small = [y | y<-xs, y<x]
    mid   = [y | y<-xs, y==x] ++ [x]
    large = [y | y<-xs, y>x]

main = print $ qsort a
