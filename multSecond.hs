on :: (b -> b -> c) -> (a -> b) -> a -> a -> c

on op f x y = f x `op` f y

multSecond = (*) `on` (snd)

main = putStrLn $ show $ multSecond ('A', 2) ('E', 7)