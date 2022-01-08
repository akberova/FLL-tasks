maxFromList :: [Integer] -> Integer
maxFromList list = foundMax list (head list)

foundMax :: [Integer] -> Integer -> Integer
foundMax [] max = max
foundMax list max = if head list > max then foundMax (tail list) (head list)
        else foundMax (tail list) max

maxFromLists :: [[Integer]]->Integer
maxFromLists list = maxFromList (map maxFromList list)

main = print(maxFromLists [[1,2,4], [1,2,3], [0, 2, 5], [-7, 2, 0], [1, 0, 0], [1]])