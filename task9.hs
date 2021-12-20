--Задан список латинских слов. Упорядочить по алфавиту.
sort :: (Ord a) => [a] -> [a]
sort [] = []
sort (x:xs) =
    let smallerSorted = sort [a | a <- xs, a <= x]
        biggerSorted = sort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

main = do
  let result = sort ["haskell","is","the","best","lang"]
  print result