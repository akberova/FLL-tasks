module Main where

import Task1
import Task2
import Task3
import Task4
import Task5
import Task6
import Task8
import Task9
import Task10
import Task11
import Task12
import Task13

products = [("Gvozdi", 3, 5), ("Dubeli", 10, 5), ("Ankery", 10, 6)]
string = "Cat Bat. Rat Dog"
numbers = [4, 7, 2, 1, 8, 5, 9]
wordss = ["Zerg", "Protoss", "Alien", "Terran"]
students = [("Slava", 7), ("Misha", 4), ("Matvey", 12), ("Lesha", 5)]

preetifyAnswer num ans = "\n" ++ "Task"++ show (num) ++ ": " ++ show (ans) ++ "\n"

answer1 = preetifyAnswer 1 (factDouble 5)
answer2 = preetifyAnswer 2 (fibonachi 6)
answer3 = preetifyAnswer 3 (factHelp 5)
answer4 = preetifyAnswer 4 (sumProducts products)
answer5 = preetifyAnswer 5 (getProfitName products)
answer6 = preetifyAnswer 6 (split ' ' string)
answer7 = preetifyAnswer 7 (split '.' string)
answer8 = preetifyAnswer 8 (bubbleSort numbers)
answer9 = preetifyAnswer 9 (bubbleSortWord wordss)
answer10 = preetifyAnswer 10 (sortArray students)
answer11 = preetifyAnswer 11 (seqA 301)
answer12 = preetifyAnswer 12 (sumandnum 123456789)
answer13 = preetifyAnswer 13 (multSecond ('A', 2) ('E', 7))

answer = answer1 ++ answer2 ++ answer3 ++ answer4 ++ answer5 ++ answer6 ++ answer7 ++ answer8 ++ answer9 ++ answer10 ++ answer11 ++ answer12 ++ answer13

main :: IO()
main = putStr(answer)