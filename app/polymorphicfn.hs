-- A function is called polymorphic ("of many types") if its type contains one or more type variables.
-- length ::  , [a] -> Int


-- zip is a curried funtion that takes a list of a and returns a function that takes a list of b and that returns a pair of a and b
-- zip :: [a] -> [b] -> [(a, b)]

-- Type classes -> Num a implements Number type classes
-- sum :: Num a => [a] -> a

-- Haskell has a number of type classes including 
    -- Num - Numeric types
    -- Eq - Equality types
    -- Ord - Ordered types
-- For example
    -- (+) :: Num a => a -> a -> a
    -- (==) :: Eq a => a -> a -> Bool
    -- (<) :: Ord a => a -> a -> Bool

-- When defining a new function in Haskell, it is useful to begin by writing down its type
add :: Num a => a -> a -> a
add x y= x + y

