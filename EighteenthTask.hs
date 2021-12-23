data Log a = Log [String] a deriving Show

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger fun logStr x = Log [logStr] (fun x)

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers x fun1 fun2 = Log list result 
    where
        Log firstStr x1 = fun1 x
        Log secondStr result = fun2 x1
        list = firstStr ++ secondStr