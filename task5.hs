import Data.List

{-Информация о товарах представлена списком следующей структуры: название, кол-во,
 стоимость единицы. Написать функцию, которая определяет от продажи каких товаров можно получить большую сумму.-}

sortGT :: (String, Integer, Integer) -> (String, Integer, Integer) -> Ordering

sortGT (a1,a2,a3) (b1,b2,b3) = compare (b2*b3) (a2*a3)

toOne :: (String, Integer, Integer) -> String
toOne (a1, a2, a3) = a1

--типо сортируем в порядке убывания и получаем лист имен приоритетных товаров
main = do
  let result = map toOne (sortBy sortGT [("salt", 2, 250),("sugar", 2, 100),("gas", 3, 100)])
  print result