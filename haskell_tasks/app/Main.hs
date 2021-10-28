module Main where

import Task1
import Task2
import Task3

preetifyAnswer ans = "\n" ++ "Task: " ++ show (ans) ++ "\n"

answer1 = preetifyAnswer (factDouble 5)
answer2 = preetifyAnswer (fibonachi 6)
answer3 = preetifyAnswer (factHelp 5)

answer = answer1 ++ answer2 ++ answer3

main :: IO()
main = putStr(answer)