wordsWhen     :: (Char -> Bool) -> String -> [String]
wordsWhen p s =  case dropWhile p s of
                      "" -> []
                      s' -> w : wordsWhen p s''
                            where (w, s'') = break p s'
main = print $ wordsWhen (=='.') "Etot paren' byl iz tekh Kto prosto lyubit zhizn'. Lyubit prazdniki i gromkij smekh Pyl' dorog i vetra svist. On byl vezde i vsegda svoim Vlyublyal v sebya celyj svet. I gnal svoj bajk, a ne limuzin Takih druzej bol'she net."