data Log a = Log [String] a deriving Show

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger func translate result = Log [translate] (func result) 

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers a func1 func2 = Log translate result 
    where
        Log trans1 b = func1 a
        Log trans2 result = func2 b
        translate = trans1 ++ trans2

--example let add1Log = toLogger (+1) "added one"
--example let mult2Log = toLogger (*2) "multiplied by 2"
--example execLoggers 3 add1Log mult2Log