doublefactorial :: Int -> Int
doublefactorial 0 = 1
doublefactorial 1 = 1
doublefactorial n = n * doublefactorial (n-2)

doublefactorial n = if n <= 1 then 1 else doublefactorial(n - 2)*n 