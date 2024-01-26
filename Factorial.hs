factorial :: Integer -> Integer
factorial n = product [1..n]

factorial_Recursive :: Integer -> Integer
factorial_Recursive 0 = 1
factorial_Recursive n = n * factorial_Recursive(n-1)