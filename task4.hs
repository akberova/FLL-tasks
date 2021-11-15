{-название, кол-во, стоимость единицы. Написать функцию, которая вычисляет стоимость всех товаров.-}

summ' :: [(String, Integer, Integer)] -> Integer
summ' = foldl (\acc (s1,s2,s3) -> acc + (s2 * s3)) 0


main = do
  let result = summ' [("соль", 1, 100),("сахар", 2, 100),("бензин", 3, 100)]
  print result