data Log a = Log [String] a deriving Show

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f a b = Log [a] (f b)

execLoggers:: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers n a b = Log list f2 where
    Log fstStr f1 = a n
    Log sndStr f2 = b f1
    list = fstStr ++ sndStr

add1Log = toLogger (+1) "added one"
mult2Log = toLogger (*2) "multiplied by 2"

main = print(execLoggers 3 add1Log mult2Log)