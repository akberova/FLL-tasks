quicksort :: [String]->[String]
quicksort [] = []
quicksort (h:t) = 
    let
       left = quicksort [x | x<-t, x<h]
       right = quicksort [x | x<-t, x>=h]
    in left++[h]++right

main = print (quicksort ["bannana","cake","apple","dad"])
--["apple","bannana","cake","dad"]
