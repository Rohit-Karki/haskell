-- data Shape = Circle Float Float Float | Rectangle Float Float Float Float  
-- The Circle value constructor has three fields, which take floats. 
-- So when we write a value constructor,
-- we can optionally add some types after it and those types define the values it will contain. 
-- Here, the first two fields are the coordinates of its center, the third one its radius.

-- :t Circle  
-- Circle :: Float -> Float -> Float -> Shape  
-- data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)  


data Point = Point Float Float deriving (Show)  
-- We can write same name and value constructor if there is only one value constructor
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)  


-- data Person1 = CK { firstName :: String  
--                      , lastName :: String  
--                      , age :: Int  
--                      , height :: Float  
--                      , phoneNumber :: String  
--                      , flavor :: String  
--                      } deriving (Show)   

data Person = Person { firstName :: String  
                     , lastName :: String  
                     , age :: Int  
                     } deriving (Eq)

                                    
-- Type constructor is the same as constructor with value constructor but with different types
data Maybe a = Nothing | Just a  

-- You might not know it, but we used a type that has a type parameter before we used Maybe. 
-- That type is the list type. 
-- Although there's some syntactic sugar in play, the list type takes a parameter to produce a concrete type.
-- Values can have an [Int] type, a [Char] type, a [[String]] type, but you can't have a value that just has a type of [].
data Vector a = Vector a a a deriving (Show)  

(Vector i j k) `vecplus` (Vector i' j' k') = Vector (i+i') (j+j') (k+k')
