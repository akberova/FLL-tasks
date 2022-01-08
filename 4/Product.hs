module Product where
    getCount :: ([Char], Integer, Integer) -> Integer
    getCount (a,b,c) = b

    getPrice :: ([Char], Integer, Integer) -> Integer
    getPrice (a,b,c) = c

    getPriceProduct :: ([Char], Integer, Integer) -> Integer
    getPriceProduct product = getCount(product) * getPrice(product)

    getTotalPrise:: [([Char], Integer, Integer)] -> Integer
    getTotalPrise [] = 0
    getTotalPrise products = getPriceProduct(head(products)) + getTotalPrise(tail(products))