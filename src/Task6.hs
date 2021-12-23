module Task6 (wordsFromSentence) where
import qualified Data.Char as Char

wordsFromSentence :: String -> [String]
wordsFromSentence sentence = case dropWhile Char.isSpace sentence of
    "" -> []
    sentence' -> w : wordsFromSentence sentence''
        where (w, sentence'') = break Char.isSpace sentence'