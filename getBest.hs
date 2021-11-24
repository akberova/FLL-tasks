import Data.List

getFirstName (x, _, _) = x
getFirstNumber (_, x, _) = x
getFirstPrice (_, _, x) = x

getSecondName (y, _, _) = y
getSecondNumber (_, y, _) = y
getSecondPrice (_, _, y) = y

getInfo (getFirstName,getFirstNumber,getFirstPrice) (getSecondName,getSecondNumber,getSecondPrice) = compare (getSecondNumber*getSecondPrice) (getFirstNumber*getFirstPrice)

getThing(getFirstName, getFirstNumber, getFirstPrice) = (getFirstName, getFirstNumber * getFirstPrice)

result = map getThing (sortBy getInfo [("guitar", 3, 1000),("drums", 2, 2000),("violin", 3, 1500),("viola", 1, 3000)])

main = putStrLn $ show $ result