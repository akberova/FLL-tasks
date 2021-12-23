module Task8 (digitSort) where
    import Data.List (delete)
    digitSort :: Ord t => [t] -> [t]
    digitSort [] = []
    digitSort xs = let x = maximum xs in  x : digitSort (delete x xs)  