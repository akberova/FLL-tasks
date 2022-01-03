{--Задан список студентов. Элемент списка содержит фамилию студента и средний балл,
 полученный после сдачи экзаментов.
 Отсортировать по убыванию среднего балла.-}

import Data.List

sortGT :: (String, Integer) -> (String, Integer) -> Ordering

sortGT (a1,a2) (b1,b2) = compare (b2) (a2)

toOne :: (String, Integer) -> String
toOne (a1, a2) = a1

--типо сортируем в порядке убывания и получаем лист имен приоритетных товаров
main = do
  let result = map toOne (sortBy sortGT [("Andrey", 2),("Kennady", 5),("Voronin", 3)])
  print result