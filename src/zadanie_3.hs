data Log a = Log [String] a deriving Show

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f msg = (\a -> Log (msg:[]) (f a))

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers x f g = 
            Log (fxs ++ gxs) ga
            where
                (Log fxs fa) = f x
                (Log gxs ga) = g fa