{-Задан текст.Текст содержит предложения.
  Признаком конца предложения является точка. Построить список предложений.-}

split :: String -> String -> [String]
split _ "" = []
split delim str = do
  split' "" str []
  where
    dl = length delim
    split' :: String -> String -> [String] -> [String]
    split' h t f --f - mas, h - word, t - sign
      | dl > length t = f ++ [h ++ t]
      | delim == take dl t = do
        split' "" (drop dl t) (f ++ [h ++ take 1 t])
      | otherwise = split' (h ++ take 1 t) (drop 1 t) f


main = print $ init $ split "." "hello ya zaryazen pivom. A ti zaryazhen tozhe ahahah."