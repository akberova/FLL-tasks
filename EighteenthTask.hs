data Log a = Log [String] a

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger fun str x = Log [str] (fun x)

logger :: a -> (a -> Log b) -> (b -> Log c) -> Log c
logger x f g = Log list gx where
    Log fs fx = f x
    Log gs gx = g fx
    list = fs ++ gs