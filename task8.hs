--Отсортировать список чисел в порядке убывания.
sort :: (Ord a) => [a] -> [a]
sort [] = []
sort (x:xs) =
    let smallerSorted = sort [a | a <- xs, a <= x]
        biggerSorted = sort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

main = do
  let result = sort [1,5,6,7,3]
  print result