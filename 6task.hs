import Distribution.Simple.Setup (CleanFlags(cleanVerbosity))
res = []
acc = ""

separateHelper :: [Char] -> [[Char]] -> [Char] -> [[Char]]
separateHelper text res acc | null text = res ++ [acc]
                            | last text == last " " = cleaner acc
                            | otherwise = separateHelper (init text) res ((last text) : acc)
                            where cleaner acc | acc == "" = separateHelper (init text) res ""
                                              | otherwise = separateHelper (init text) (res++[acc]) ""

separate :: [Char] -> [[Char]]
separate text = separateHelper text res acc