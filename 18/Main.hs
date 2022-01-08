data Log a = Log [String] a deriving Show

mult2Log = toLogger (* 2) "multiplied by 2"
add1Log = toLogger (+1) "added one"

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f msg = (\a -> Log (msg:[]) (f a))

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers x f g = 
            Log (fxs ++ gxs) ga
            where
                (Log fxs fa) = f x
                (Log gxs ga) = g fa

main = print(execLoggers 3 mult2Log add1Log)