dfac :: Integer -> Integer
dfac 0 = 1
dfac 1 = 1
dfac x = x * dfac(x - 2)

main = print (dfac 7)