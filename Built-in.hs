--head
head' :: [a] -> a
head' [] = error "Can't get element in the empty list."
head' (x:_) = x

--tail
tail' :: [a] -> [a]
tail' (_:xs) = xs

safetail :: [a] -> [a]
safetail (_:xs) = xs

--take first two element of a list
first_two_element :: [a] -> [a]
first_two_element xs 
    | length xs < 2 = error "Error list"
    | otherwise = [head xs , head (tail xs)] 


--length function
length' :: [a] -> Integer
length' [] = 0
length' xs = 1 + length' (tail xs)


--Connect
connect :: [a] -> [a] -> [a] -> [a]
connect a b c = a ++ b ++ c

signum' :: Int -> Int
signum' n = if n < 0 then -1 else
                if n == 0 then 0 else 1

abs' :: Int -> Int
abs' n| n >= 0 = n 
      | otherwise = -1