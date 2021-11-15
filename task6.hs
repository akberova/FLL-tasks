split :: String -> String -> [String]
split _ "" = []
split delim str =
  split' "" str []
  where
    dl = length delim
    split' :: String -> String -> [String] -> [String]
    split' h t f
      | dl > length t = f ++ [h ++ t]
      | delim == take dl t = split' "" (drop dl t) (f ++ [h])
      | otherwise = split' (h ++ take 1 t) (drop 1 t) f

main = print $ split " " "hello ya zaryazen pivom"