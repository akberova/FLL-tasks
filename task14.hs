class Printable i where
    toString :: i -> String

instance Printable Bool where
    toString True = "true"
    toString False = "false"

instance Printable () where
    toString () = "unit type"

main = do
  let result = toString True
  print result