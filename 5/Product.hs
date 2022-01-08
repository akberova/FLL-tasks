module Product where
    getCount :: ([Char], Integer, Integer) -> Integer
    getCount (a,b,c) = b

    getPrice :: ([Char], Integer, Integer) -> Integer
    getPrice (a,b,c) = c

    getPriceProduct :: ([Char], Integer, Integer) -> Integer
    getPriceProduct product = getCount(product) * getPrice(product)

    comparator :: (([Char], Integer, Integer), [([Char], Integer, Integer)]) -> ([Char], Integer, Integer)
    comparator (a, []) = a
    comparator (a, b) = if getPriceProduct(a) > getPriceProduct(head(b)) then comparator (a, tail(b)) else comparator (head(b), tail(b))

    getMorePrice products = comparator (("fixture", 0, 0), products)
