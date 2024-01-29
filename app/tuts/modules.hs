import Data.List  

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

findKey :: (Eq k) => k -> [(k,v)] -> Maybe v  
findKey key [] = Nothing  
findKey key ((k,v):xs) = if(k == key) then Just v else findKey key xs