import qualified Data.List as List
import Data.List (elemIndices)
-- 29 var 

--1) list elements count from one
-- *Main> oddSum [1,2,3,4]
-- 4
oddSum list = sum (map (brush list) list)
        where brush list a | odd (head (elemIndices a list)) = 0
                           | otherwise = a
                       

--2)
exclude num = filter (condition num)
                    where condition num a = a >= 0 || a <= num

--3) 
getExcludeLen num list = length (exclude num list)

--4) 
getMaxOfLess num list = maximum (filter (< num) list)

--5)list elements count from one, так как было н уточнено произведений на что, предположиле и реализовала - на заданное число
-- *Main> evenMul 5 [2,4,5,6,1,8]
-- [30,40]
-- Необходимо посчитать произведение элементов больше заданного числа. В данном случае больше 5 это 6 и 8 = 48
evenMul num list = map (*num) (evenEl num list)
                    where evenEl num = filter (condition num list)
                            where condition num list a = odd (head (elemIndices a list)) && (a > num)

--6)переиспользую из 8 задания :3
acc :: [a]
acc = []

sortList :: (Num a, Ord a) => [a] -> [a] -> [a]
sortList acc numberList | null numberList = acc
                    | null acc = sortList [head numberList] (tail numberList)
                    | (head numberList > head acc) && (head numberList > last acc) = sortList (acc ++ [head numberList]) (tail numberList)
                    | head numberList < head acc = sortList (head numberList : acc) (tail numberList)
                    | otherwise = findPos numberList (tail acc) leftPart
                    where
                        leftPart = [head acc]
                        findPos numberList acc leftPart | not (null numberList) && (head numberList < head acc) = sortList ((leftPart ++ [head numberList]) ++ acc) (tail numberList)
                                                        | otherwise = findPos numberList (tail acc) (leftPart ++ [head acc])

sort num list = sortList acc (evenMul num list)
