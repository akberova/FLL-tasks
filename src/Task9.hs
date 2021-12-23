module Task9 (letterSort) where
    import Data.List (delete)
    letterSort :: Ord t => [t] -> [t]
    letterSort [] = []
    letterSort xs = let x = minimum xs in  x : letterSort (delete x xs)  