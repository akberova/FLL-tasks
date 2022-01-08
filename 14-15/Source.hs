module Source where
    class Printable a where
        toString :: a -> String

    instance Printable Bool where
        toString True = "true"
        toString False = "false"    

    instance Printable () where
        toString _ = "unit type"

    instance (Printable a, Printable b) => Printable (a,b) where
        toString pair = "(" ++ (toString $ fst pair) ++ "," ++ (toString $ snd pair) ++ ")"