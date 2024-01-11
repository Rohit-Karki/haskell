max a b 
    | a > b = a 
    | otherwise = b
square x = x * x
odd x = x `mod` 2 /= 0
oddSquareSum = sum ( [square x|x<-[1,3..10000],odd x ] )