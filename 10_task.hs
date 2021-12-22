import Data.List
import Data.Function

getStudent :: [([Char],Double)]->[([Char],Double)]
getStudent students =  sortBy (flip compare `on` snd) students

main = print (getStudent [("Ivanov",5.0),("Petrov",4.2),("Sidorov",4.8),("Ivanov",4.0)])
--[("Ivanov",5.0),("Sidorov",4.8),("Petrov",4.2),("Ivanov",4.0)]
