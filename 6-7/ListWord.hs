module ListWord where

    split :: String -> Char -> [String]
    split line spliter = splitHelper [] line "" spliter

    splitHelper:: [String] -> String -> String -> Char -> [String]
    splitHelper list [] "" spliter = list
    splitHelper list [] word spliter = list ++ [word]
    splitHelper list line word spliter | (head line ==  spliter) = splitHelper (list ++ [word]) (tail line) "" spliter 
                                       | otherwise = splitHelper list (tail line) (word ++ [head(line)]) spliter 
    
    