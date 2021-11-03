fun :: Int -> (Int, Int)
fun number | number == 0 = (0, 1)
           | number < 0 = helper (-number) 0 0
           | otherwise = helper number 0 0

helper :: Int -> Int -> Int -> (Int, Int)
helper 0 summ count = (summ, count)
helper number summ count = helper (div number 10) (summ + (mod number 10)) (count + 1)