getProductCount :: ([Char], Integer, Integer) -> Integer
getProductCount (_, a, _) = a

getProductCost :: ([Char], Integer, Integer) -> Integer
getProductCost (_, _, a) = a

getTotalProductCost :: ([Char], Integer, Integer) -> Integer
getTotalProductCost product = getProductCount(product)*getProductCost(product)

getMostProfitableProductHelper :: (([Char], Integer, Integer), [([Char], Integer, Integer)]) -> ([Char], Integer, Integer)
getMostProfitableProductHelper (currentMostProfitable, []) = currentMostProfitable
getMostProfitableProductHelper (currentMostProfitable, rest) = 
    if getTotalProductCost(currentMostProfitable) < getTotalProductCost(head(rest)) then
        getMostProfitableProductHelper (head(rest), tail(rest))
    else
        getMostProfitableProductHelper (currentMostProfitable, tail(rest))


getMostProfitableProduct :: [([Char], Integer, Integer)] -> ([Char], Integer, Integer)
getMostProfitableProduct []       = error "This function works with non empty values"
getMostProfitableProduct products = getMostProfitableProductHelper(("getMostProfitableProductStub", -10, 1), products)

-- testing --
assert :: Bool -> Bool
assert False = error "Assertion failed"
assert True  = True

testNull   = getMostProfitableProduct([])       -- Should just throw error
testSingle = assert(getMostProfitableProduct([("Name", 10, 10)]) == ("Name", 10, 10))
-- TODO: can we do something like getMostProfitableProduct([n]) == n ?
testMultipleFirstBetter   = assert(getMostProfitableProduct([("First", 10, 20), ("Second", 4, 40)]) == ("First", 10, 20))
testMultipleSecondBetter  = assert(getMostProfitableProduct([("First", 10, 20), ("Second", 4, 60)]) == ("Second", 4, 60))

