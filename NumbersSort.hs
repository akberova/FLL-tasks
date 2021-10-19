sortfunc [] = []
sortfunc (a:b) = 
    let
       left = sortfunc [x | x <- b, x >= a]
       right = sortfunc [x | x <- b, x < a]
    in left ++ [a] ++ right
main = putStrLn $ show $ sortfunc [5, 154, 214, 2, 11, 1, 2, 2]