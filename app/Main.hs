module Main where

import Task1
import Task2
import Task4
import Task5

showAns num ans = "\n" ++ show num ++ "  " ++ show ans ++ "\n"

-- ans = showAns 1 (factorial 5)
-- ans = showAns 2 (fibonachi (-10))
-- ans = showAns 3 ()
goods = [("Toy Car", 200, 2), ("Robot", 400, 3)]
-- ans = showAns 4 (goodsSumArr goods)
ans = showAns 5 (profit goods)

main :: IO()
main = putStr(ans)