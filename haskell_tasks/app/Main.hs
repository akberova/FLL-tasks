module Main where

import Task1
import Task2
import Task3
import Task4
import Task5
import Task6
import Task12

products = [("Gvozdi", 3, 5), ("Dubeli", 10, 5), ("Ankery", 10, 6)]
string = "Cat Bat Rat Dog"

preetifyAnswer num ans = "\n" ++ "Task"++ show (num) ++ ": " ++ show (ans) ++ "\n"

answer1 = preetifyAnswer 1 (factDouble 5)
answer2 = preetifyAnswer 2 (fibonachi 6)
answer3 = preetifyAnswer 3 (factHelp 5)
answer4 = preetifyAnswer 4 (sumProducts products)
answer5 = preetifyAnswer 5 (getProfitName products)
answer6 = preetifyAnswer 6 (split ' ' string)
answer12 = preetifyAnswer 12 (sumandnum 123456789)

answer = answer1 ++ answer2 ++ answer3 ++ answer4 ++ answer5 ++ answer6 ++ answer12

main :: IO()
main = putStr(answer)