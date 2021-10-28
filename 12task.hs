
sum'n'count x | x < 0 = acc (-x)
              | x >= 0 = acc x
                        where acc x = (sum, count)
                                where
                                    acc_s s 0 units = s + units
                                    acc_s s x units = acc_s (s + mod x 10) (div x 10) (div units 10)
                                    acc_c 0 = 0 
                                    acc_c x = acc_c (div x 10) + 1
                                    sum = acc_s 0 x x
                                    count = acc_c x 