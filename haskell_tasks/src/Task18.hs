module Task18
    ( 
        toLogger,
        execLoggers
    ) where

data Log a = Log [String] a deriving Show

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f desc x = Log [desc] (f x)

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers x f1 f2 = Log list ans 
    where
        Log firstStr x1 = f1 x
        Log secondStr ans = f2 x1
        list = firstStr ++ secondStr