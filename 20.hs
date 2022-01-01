task1 :: Integer -> [Integer] -> [Integer]
task1 a = map (+a)

--example task1 5 [1,2,3]

task2 :: Integer -> [Integer] -> [Integer]
task2 a = map (*a)

--example task2 2 [1,2,3]

connect :: Integer -> Integer -> (Integer, Integer)
connect a b = (b, a)

task3 :: Integer -> [Integer] -> [(Integer, Integer)]
task3 a = map (connect a)

--example task3 9 [1,2,3]