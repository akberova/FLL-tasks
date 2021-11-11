doubleFact 0 = 1
doubleFact 1 = 1
doubleFact n = doubleFact (n - 2)*n 

doubleFactorial n = if n <= 1 then 1 else doubleFactorial(n - 2)*n 