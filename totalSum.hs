getNumber (_, x, _) = x
getPrice (_, _, x) = x
result product = getNumber(product)*getPrice(product)
main = putStrLn $ show $ result ("Something", 11, 7)