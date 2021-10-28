module Task12
    ( sumandnum
    ) where
    
    numDigits :: Integer -> Integer
    numDigits x = (round (logBase 10 (fromIntegral x)) + 1)
    sumd 0 = 0
    sumd x = (x `mod` 10) + sumd (x `div` 10)

    sumandnum :: Integer -> (Integer, Integer)
    sumandnum x = (sumd x, numDigits x)