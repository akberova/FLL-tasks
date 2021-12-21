extractMaxElementFromList :: (Ord a) => [a] -> a
extractMaxElementFromList [] = error "Non empty list required"
extractMaxElementFromList list = helper (tail(list)) (head(list))
    where 
        helper [] curMax = curMax
        helper remaining curMax = if head(remaining) > curMax then helper (tail(remaining)) (head(remaining)) else helper (tail(remaining)) curMax


extractMaxElementFromSubLists list = 
    extractMaxElementFromList (map extractMaxElementFromList list)
