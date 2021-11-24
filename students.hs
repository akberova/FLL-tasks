import Data.List

getName (x, _) = x
getNumber (_, x) = x

getMark(getFirstName,getFirstNumber) (getSecondName,getSecondNumber) = compare getSecondNumber getFirstNumber

getStudent(getFirstName, getFirstNumber) = (getFirstName, getFirstNumber)

result = map getStudent (sortBy getMark [("Aldonin", 3.9),("Malafeev", 3.3),("Bakaev", 4.7),("Zobnin", 4.5)])

main = putStrLn $ show $ result