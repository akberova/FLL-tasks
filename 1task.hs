doubleFact 0 = 1
doubleFact 1 = 1
doubleFact n = doubleFact (n-2)*n 

doubleFact2 n = if n<=1 then 1 else doubleFact2 (n-2)*n