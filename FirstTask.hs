doubleFact 0 = 1
doubleFact 1 = 1
doubleFact n = doubleFact (n - 2) * n 

doubleFactAnother n = if n <= 1 then 1 else doubleFactAnother (n - 2) * n 