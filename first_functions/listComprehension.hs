boomEven xs = [ if x `mod` 2 == 0 then "BOOM!" else "BANG!" | x <- xs]
