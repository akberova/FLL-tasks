data Item = Item {name :: String, quantity :: Integer, cost :: Integer}

calcAllItemsCost :: (n :: Item) -> Integer
calcAllItemsCost (n :: Item) = cost * quantity


main = do

let pillow = Item {
    name   = "Ikea Soft Pillow",
    quantity    = 100,
    cost         = 50 }

let plate = Item {
    name   = "Ikea White Plate",
    quantity    = 120,
    cost         = 30 }

let glass = Item {
    name   = "Ikea Crystall Glass",
    quantity    = 150,
    cost         = 25 }

let result = calcAllItemsCost (pillow)
print result