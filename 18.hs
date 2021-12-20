data Log a = Log [String] a deriving Show

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f msg val = Log [msg] (f val) 

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers val f1 f2 = Log list finalValue 
    where
        Log msg1 f1val = f1 val
        Log msg2 finalValue = f2 f1val
        list = msg1 ++ msg2
