module Sort where
    import Data.List
    import Data.Function
-- я устал от хаскеля, сделал через стоковую сортировку :(
    getScore :: (String, Float) -> Float
    getScore (a, b) = b

    sort :: [(String, Float)] -> [(String, Float)]
    sort list = reverse (sortBy (compare `on` snd) list)
