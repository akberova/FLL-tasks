--считаем цифры и сумму цифр
digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = (sum $ digs $ abs (x),toInteger $ length $ digs $ abs (x))
main = do
    let result = sum'n'count 111
    print result