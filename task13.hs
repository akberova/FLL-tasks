import Data.Function
--произведение 2 членов кортежа
multiSecond = g `on` h

g = (*)

h = (snd)

main = do
    let result = multiSecond ("123",2) ("123", 4)
    print result