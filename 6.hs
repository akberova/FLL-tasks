{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text as T

main = print $ T.splitOn " " "abc bca cad"
