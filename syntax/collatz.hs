collatz :: (Integral a) => a -> a
collatz a
 | a `mod` 2 == 0 = a `div` 2
 | otherwise = (3 * a) + 1 

takeWhileInclusive :: (a-> Bool) -> [a] -> [a]
takeWhileInclusive _ [] = []
takeWhileInclusive p (x:xs) = x : if p x then takeWhileInclusive p xs else []

converge f x y = takeWhileInclusive (/= y) (iterate f x)

-- compute the len of the list generated by making a function converge on a value
len f x y = (length (converge f x y), x)

-- compute the longest list given a max num
longest f y m = maximum [len f x y | x <- [1..m]]

