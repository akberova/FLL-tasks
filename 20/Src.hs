first :: Integer -> [Integer] -> [Integer]
first a list = map (+ a) list

second :: Integer -> [Integer] -> [Integer]
second a list = map (* a) list

third :: Integer -> [Integer] -> [(Integer, Integer)]
third a list = map (flip (,) a) list

fourth :: [Integer] -> [[Integer]]
fourth list = map helperFourth list
helperFourth a = [a]

fifth :: [Integer] -> [(Integer, Int)]
fifth list = helperFifth [] list

helperFifth result [] = result
helperFifth result remaining = helperFifth (result ++ [flip (,) (length (filter (== (head remaining)) remaining)) (head remaining)]) (filter (/= (head remaining)) remaining) 

sixth :: [Integer] -> [Integer]
sixth list | (tail list) == [] = []
           | otherwise = ((head list) - (head (tail list))) : (sixth (tail list))

seventh :: [Integer] -> [Integer]
seventh list | (tail list) == [] = []
             | otherwise = ((head list) + (head (tail list))) : (seventh (tail list))
