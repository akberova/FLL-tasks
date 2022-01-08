data Log a = Log [String] a deriving Show

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f str par = Log [str] (f par)

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers elem logf1 logf2 = Log [steps] res2
                            where 
                                Log [step1] res1 = logf1 elem 
                                Log [step2] res2 = logf2 res1
                                steps = step1 ++ "', '" ++ step2
