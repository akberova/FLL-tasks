sortStudent :: [(String, Float)] -> [(String, Float)]
sortStudent list = sort (tail list) (head list)

sort :: [(String, Float)] -> (String, Float) -> [(String, Float)]
sort [] list = [list]
sort res list   | snd (head res) > snd list = head res : sort (tail res) list
                | otherwise = list : sort (tail res) (head res)