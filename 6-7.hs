helper :: Char -> String -> String -> [String] -> Char -> [String]
helper elem str word result flag | null (tail str) = if elem == flag
                                                        then if null word then lastElem (head str) [] result flag else lastElem (head str) [] (result ++ [word]) flag
                                                        else if null word then lastElem (head str) [elem] result flag else lastElem (head str) (word ++ [elem]) result flag
                                 | elem == flag = secondHelper elem str word result flag
                                 | otherwise = helper (head str) (tail str) (word ++ [elem]) result flag

secondHelper :: Char -> String -> String -> [String] -> Char -> [String]
secondHelper _ str word result flag | head str == flag && tail str /= [] = secondHelper flag (tail str) word result flag
                                    | null (tail str) = lastElem (head str) [] (result ++ [word]) flag
                                    | null word = helper (head str) (tail str) [] result flag
                                    | otherwise = helper (head str) (tail str) [] (result ++ [word]) flag


lastElem :: Char -> String -> [String] -> Char -> [String]
lastElem elem word result flag
  | null word = if elem == flag then result else result ++ [[elem]]
  | elem == flag = result ++ [word]
  | otherwise = result

toWords :: String -> [String]
toWords "" = []
toWords " " = []
toWords a = if null (tail a) then [a] else helper (head a) (tail a) [] [] ' '

toSentences :: String -> [String]
toSentences "" = []
toSentences "." = []
toSentences a = if null (tail a) then [a] else helper (head a) (tail a) [] [] '.'

a :: String
a = " Not" -- empty because there is no space after the word
b = "Nat" -- same
c = "   Nat    " -- correct
d = "Hello World" -- only ["Hello"]
e = "Hello world " -- correct



