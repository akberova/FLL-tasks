maxim xs = map (maxi) xs

maxi :: [Integer] -> Integer
maxi [x] = x
maxi (x:xs)
 | (maxi xs) > x = maxi xs
 | otherwise = x

main = do
  let keke = [[1, 4, 7],[5, 7, 1]]
  let res = maxim keke
  print res
  print $ maxi res