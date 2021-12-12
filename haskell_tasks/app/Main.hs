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
import Task14_15

data Point3D a = Point3D a a a deriving Show
data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a) deriving Show

instance Functor Point3D where
    fmap func (Point3D a b c) = Point3D (func a) (func b) (func c)

instance Functor GeomPrimitive where 
    fmap func (LineSegment (Point3D a1 b1 c1) (Point3D a2 b2 c2)) = LineSegment (fmap func (Point3D a1 b1 c1)) (fmap func (Point3D a2 b2 c2))
    fmap func (Point (Point3D a b c)) = Point (fmap func (Point3D a b c))

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
answer14 = preetifyAnswer 14 (toString True)
answer15 = preetifyAnswer 15 (toString (True, ()))
answer16 = preetifyAnswer 16 (fmap (+ 1) (Point3D 5 6 7))
answer17 = preetifyAnswer 17 (fmap (+ 1) $ LineSegment (Point3D 0 0 0) (Point3D 1 1 1))

answer = answer1 ++ 
         answer2 ++ 
         answer3 ++ 
         answer4 ++ 
         answer5 ++ 
         answer6 ++ 
         answer7 ++ 
         answer8 ++ 
         answer9 ++ 
         answer10 ++ 
         answer11 ++ 
         answer12 ++ 
         answer13 ++ 
         answer14 ++ 
         answer15 ++
         answer16 ++
         answer17

main :: IO()
main = putStr(answer)