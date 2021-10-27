getProductCount :: ([Char], Integer, Integer) -> Integer
getProductCount (_, a, _) = a

getProductCost :: ([Char], Integer, Integer) -> Integer
getProductCost (_, _, a) = a

getTotalProductCost :: ([Char], Integer, Integer) -> Integer
getTotalProductCost product = getProductCount(product)*getProductCost(product)

totalCost :: [([Char], Integer, Integer)] -> Integer
totalCost [] = 0
totalCost products = getTotalProductCost(head(products)) + totalCost(tail(products))

-- testing --
assert :: Bool -> Bool
assert False = error "Assertion failed"
assert True  = True

testNull     = assert(totalCost([]) == 0)
testSingle   = assert(totalCost([("Name1", 10, 50)]) == 500)
testMultiple = assert(totalCost([("Name1", 10, 50), ("Name2", 40, 2)]) == 580)


