_fibonacci 0 = 0
_fibonacci 1 = 1

_fibonacci n = _fibonacci(abs(n) - 1) + _fibonacci(abs(n) - 2)
oldfibonacci n = if n < 0 then -_fibonacci(n) else _fibonacci(n)

fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n == -1 = 1
            | n > 0 = helper 1 1 n
                | n < 0 = (-1)^(-n+1) * fibonacci(-n)

helper acc acc' i | i == 2 = acc
                  | i > 2 = helper (acc + acc') acc (i - 1)