findMax listOfLists| null listOfLists = 0
                   | otherwise = maximum subFindMax
                   where subFindMax = map maximum listOfLists