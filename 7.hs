{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T

main = print $ filter (\x -> x /= "") (T.splitOn ". " "This is the first sentence. This is the second sentence. ")
