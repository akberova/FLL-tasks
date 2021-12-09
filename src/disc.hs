roots a b c =
 let x1 = (- d - b) / h
     x2 = (- d + b) / h
     d = sqrt (b ^ 2 - 4 * a * c)
     h = 2 * a
 in (x1, x2)