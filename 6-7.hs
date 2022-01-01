helper :: Char -> String -> String -> [String] -> [String]
helper elem str word result | null (tail str) && head str /= ' ' = result
                            | null (tail str) && head str == ' ' = secondHelper elem "" word result
                            | elem == ' ' = secondHelper elem str word result
                            | otherwise = helper (head str) (tail str) (word ++ [elem]) result

secondHelper :: Char -> String -> String -> [String] -> [String]
secondHelper elem "" [] result = result 
secondHelper elem "" word result = if elem == ' '
                                    then result ++ [word]
                                    else result ++ [word ++ [elem]]
secondHelper elem str [] result = helper (head str) (tail str) [] result
secondHelper elem str word result = helper (head str) (tail str) [] (result ++ [word])


toWords :: String -> [String]
toWords "" = []
toWords " " = []
toWords a = helper (head a) (tail a) [] []

a :: String
a = " Not" -- empty because there is no space after the word
b = "Nat" -- same
c = "   Nat    " -- correct
d = "Hello World" -- only ["Hello"]
e = "Hello world " -- correct



