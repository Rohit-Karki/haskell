main :: IO ()
main = do
  putStrLn "Hello , what ’s your name ?"
  name <- getLine
  putStrLn (" Hey " ++ name ++ " , you rock ! ")

-- Monad is just like a functor and an applicative is a typeclass
-- Monad applies a function to the wrapped value and returns a wrapped value.

-- Just 4 >>=   4
-- (Just 4) >>= half
-- half 4

class Monad m where
  -- bind
  (>>=) :: (m a) => (a -> m b) -> m b
-- "m" ==> monad
-- "m a" ==> Just2 4
-- (a -> m b) ==> 

instance Monad Maybe where 
    Nothing2 >>= 