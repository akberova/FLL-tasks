{--20.Использовать функции высших порядков при решении следующих задач (filter, map, reduce и т.д.):

   К каждому элементу списка прибавить заданное число.
   Каждый элемент списка умножить на заданное число.
   по исходному списку сформировать список пар, где вторым элементом списка является заданное число.
   Из исходного списка сформировать список списков;
   Из исхожного списка сформировать список пар,
    где первый элемент каждой пары равен соответствующему элементу исходного списка, а второй равен числу вхождений этого элемента в исходный список;
   Из исходного списка сформировать список, в котором каждый элемент равен разности между соседними элементами исходного списка;
   Из исходного списка сформировать список, в котором каждый элемент равен сумме соседних элементов исходного списка.-}

--sort :: (Ord a) => [a] -> [a]
plus p xs = map (+p) xs
mul p xs = map (*p) xs
mk p = [p]
make_lists xs = map (mk) xs
make_count (xs:x) = [length $ elemIndices xs x, x]
split xs = splitAt $ (length xs)/2 xs

-- ! Читай внимательно условие заданий
main = do
  let mas = [1,2,3,4]
  let result = make_count mas
  print result
