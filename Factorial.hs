facts::Integer->Integer
facts 0 = 1
facts 1 = 1
facts n = facts (n-2)*n
main = putStrLn $ show $ facts 6