import Data.List

a = [
    ("c", 4.0),
    ("b", 4.5),
    ("a", 5.0)]

extractGrade :: ([Char], Double) -> Double
extractGrade (name, grade) = grade

sortGT (a1, b1) (a2, b2)
    | b1 < b2 = GT
    | b1 > b2 = LT
    | b1 == b2 = compare a1 a2

main = print $ sortBy sortGT a 