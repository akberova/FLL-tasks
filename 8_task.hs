quicksort :: [Int]->[Int]
quicksort [] = []
quicksort (h:t) = 
    let
       right = quicksort [x | x<-t, x<h]
       left = quicksort [x | x<-t, x>=h]
    in left++[h]++right

main = print (quicksort [3,5,6,7,8,1,2,34,1])
--[34,8,7,6,5,3,2,1,1]
