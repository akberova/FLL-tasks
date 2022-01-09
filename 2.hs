_fibonacci 0 = 0
_fibonacci 1 = 1

_fibonacci n = _fibonacci(abs(n) - 1) + _fibonacci(abs(n) - 2)
fibonacci n = if n < 0 then -_fibonacci(n) else _fibonacci(n)

main = print(fibonacci(-10))
