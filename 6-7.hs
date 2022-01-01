
helper :: Char -> String -> String -> [String] -> [String]
helper elem str word result | null (tail str) = secondHelper elem str word result
                            | elem == ' ' = helper (head str) (tail str) [] (result ++ [word])
                            | otherwise = helper (head str) (tail str) (word ++ [elem]) result

secondHelper :: Char -> String -> String -> [String] -> [String]
secondHelper elem str word result = if head str /= ' '
                                    then result
                                    else result ++ [word ++ [elem]]

toWords :: String -> [String]
toWords "" = []
toWords " " = []
toWords a = helper (head a) (tail a) [] []

a :: String
a = " Not" -- empty because there is no space after the word
b = "Nat" -- same
c = "Nat " -- correct
d = "Hello World" -- only ["Hello"]
e = "Hello world " -- correct



