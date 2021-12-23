module Main where

import Task1
import Task2
import Task4
import Task5
import Task6
import Task7
import Task8
import Task9

showAns num ans = "\n" ++ show num ++ "  " ++ show ans ++ "\n"

-- ans = showAns 1 (factorial 5)
-- ans = showAns 2 (fibonachi (-10))
-- ans = showAns 3 ()
goods = [("Toy Car", 200, 2), ("Robot", 400, 3)]
-- ans = showAns 4 (goodsSumArr goods)
-- ans = showAns 5 (profit goods)
wordsArr = "dsfh skdjhf skdj"
-- ans = showAns 6 (wordsFromSentence wordsArr)
sentencesArr = "sdfhjk.sdfkjhk.sdf"
-- ans = showAns 7 (sentencesFromText (=='.') sentencesArr)
digitArr = [1,2,6,5,9]
-- ans = showAns 8 (digitSort digitArr)
letterArr = ["I", "a", "g"]
ans = showAns 9 (letterSort letterArr)

main :: IO()
main = putStr(ans)
