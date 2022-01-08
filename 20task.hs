import qualified Data.List as List
import Data.List (elemIndices)
add num = map (+num)

mul num = map (*num)

pair :: b1 -> [a] -> [(a, b1)]
pair num = map (makePair num)
                where makePair num a = (a, num)

list = map makeList
                where makeList a = [a]


listOfPairs list = map makeListPairs (List.nub list)
                where
                    makeListPairs a = [(a, length (filter (==a) list))]


difOfNeib list = getDif (tail list) (init list)
            where getDif first second = map (sumEl second) first
                    where sumEl second a = a - second !! head (elemIndices a first)

sumOfNeib list = getDif (tail list) (init list)
            where getDif first second = map (sumEl second) first
                    where sumEl second a = a + second !! head (elemIndices a first)