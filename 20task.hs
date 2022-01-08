add num = map (+num)

mul num = map (*num)

pair :: b1 -> [a] -> [(a, b1)]
pair num = map (makePair num)
                where makePair num a = (a, num)