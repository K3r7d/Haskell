head' :: [a] -> a
head' [] = error "Can't get element in the empty list."
head' (x:_) = x

first_two_element :: [a] -> [a]
first_two_element xs 
    | length xs < 2 = error "Error list"
    | otherwise = [head xs , head (tail xs)] 

length' :: [a] -> Integer
length' [] = 0
length' xs = 1 + length' (tail xs)