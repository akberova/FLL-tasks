merge :: (Ord a) => [a] -> [a] -> [a] -> [a]
merge [] [] []  = []
merge [a] [] [] = [a]
merge [] [a] [] = [a]
merge [a] [b] [] = if a > b then [a, b] else [b, a]
merge a b c if head(a) > head(b) then 


sort :: (Ord a) => [a] -> [a]
sort [a] = [a]
sort [a, b] = merge [a] [b]



