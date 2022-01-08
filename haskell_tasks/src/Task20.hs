module Task20
    ( 
        operation,
        pairList,
        listedList,
        closeSum,
        closePow
    ) where

operation :: Num a => [a] -> a -> a -> [a]
operation list x oper = map ((oper) x) list

pairList :: [a] -> a -> [(a, a)]
pairList list x = map ((,) x) list

listedList :: [a] -> [[a]]
listedList list = map listedListHelper list

listedListHelper :: a -> [a]
listedListHelper x = [x]

closeSum :: [a] => [a]
closeSum list = fst (foldl (\(res,val) x -> (res ++ [((+) x) x], x)) ([], head list) (tail list))

closePow :: [a] => [a]
closePow list = fst (foldl (\(res,val) x -> (res ++ [((*) x) x], x)) ([], head list) (tail list))