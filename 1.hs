doublefactorial 0 = 1
doublefactorial 1 = 1
doublefactorial x = x * doublefactorial(x - 2)

main = print(doublefactorial 7)