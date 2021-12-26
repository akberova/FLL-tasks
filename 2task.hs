step n | n<0 = -1
       | n>0 = 1

fibonacciNeg 0 = 0
fibonacciNeg 1 = 1
fibonacciNeg (-1) = (-1)
fibonacciNeg n = fibonacciNeg (n - step n) + fibonacciNeg (n - 2*step n)