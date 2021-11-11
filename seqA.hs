-- (!)Reshenie s pary, ne moe
seqA n
  | n >= 3 =
    let 
      helper acc1 acc2 acc3 2 = acc3
      helper acc1 acc2 acc3 n = helper acc2 acc3 (acc3 + acc2 - 2 * acc1) (n - 1)
     in helper 1 2 3 n
  | n == 2 = 3
  | n == 1 = 2
  | n == 0 = 1
main = putStrLn $ show $ seqA 301
