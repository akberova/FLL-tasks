seqBackAcc prev1 prev2 prev3 ind | (ind <= 0) = prev3
                                 | (ind == 1) = prev2
                                 | (ind == 2) = prev1
                                 | otherwise = seqBackAcc (prev1 + prev2 - 2*prev3) prev1 prev2 (ind-1)

seqA = seqBackAcc 3 2 1