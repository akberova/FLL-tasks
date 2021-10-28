module Task3
    ( factHelp,
        helper
    ) where
    
    factHelp n  | n >= 0 = helper 1 n
                | otherwise = error("args must be >0");

    helper acc 0 = acc
    helper acc n = helper (acc*n) (n-1)