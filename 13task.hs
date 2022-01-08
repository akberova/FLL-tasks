on :: (b -> b -> c) -> (a -> b) -> a -> a -> c
on op f x y = f x `op` f y

-- func in `` can be use like infix operator
g first second = first * second

h (name, number) = number

multSecond = g `on` h