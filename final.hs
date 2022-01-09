diffOfEven :: (Integral a, Num a) => [a] -> a
diffOfEven list = foldl1 (-) (filter even list)

excludePos :: (Num a, Ord a) => [a] -> [a]
excludePos list = filter (<= 0) list

lengthNonpos :: (Num a, Ord a) => [a] -> Int
lengthNonpos list = length (excludePos list)

-- minOfNonPosThatMoreThanElem [1,2,3,5,6] 1
*** Exception: Prelude.minimum: empty list
minOfNonPosThatMoreThanElem :: (Num a, Ord a) => [a] -> a -> a
minOfNonPosThatMoreThanElem list x = minimum (filter (> x) (excludePos list))

-- Вычисление ПРОИВЕДЕНИЙ нечетных элементов списка, а не произведения
productOfOdd :: (Integral a,Num a) => [a] -> a
productOfOdd list = foldl1 (*) (filter odd list)

-- Нет сортировки

