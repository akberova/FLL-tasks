data Log a = Log [String] a deriving Show

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger fun name val = Log [name] (fun val)

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers par f1 f2 = Log list value
    where
        Log name1 par1 = f1 par
        Log name2 value = f2 par1
        list = name1 ++ name2

main = do
    let add1Log = toLogger (+1) "added one"
    let mult2Log = toLogger (*2) "multiplied by 2"
    print $ execLoggers 3 add1Log mult2Log