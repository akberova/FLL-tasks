module Task7 (sentencesFromText) where
    sentencesFromText     :: (Char -> Bool) -> String -> [String]
    sentencesFromText sign sentence =  case dropWhile sign sentence of
                      "" -> []
                      sentence' -> w : sentencesFromText sign sentence''
                            where (w, sentence'') = break sign sentence'