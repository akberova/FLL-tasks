step :: (Ord a, Num a, Num p) => a -> p
step n | n<0 = -1
       | n>0 = 1

fibonacciNeg :: (Num a, Num p, Ord a) => a -> p
fibonacciNeg 0 = 0
fibonacciNeg 1 = 1
fibonacciNeg (-1) = (-1)
fibonacciNeg n = fibonacciNeg (n - step n) + fibonacciNeg (n - 2*step n)


fibAcc :: (Num t1, Num t2, Ord t1) => t2 -> t2 -> t1 -> t2
fibAcc prev1 prev2 0 = prev1
fibAcc prev1 prev2 n = fibAcc (prev1 + prev2) prev1 (n - step n)

fibonacciAccum :: (Num t1, Num t2, Ord t1) => t1 -> t2
fibonacciAccum n = fibAcc 0 (step n) n