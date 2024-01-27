-- class Functor f => Applicative f where
--     pure :: a->f a
--     <*> :: f (a -> b) -> f a -> f b

data Maybe2 a = Just2 a | Nothing2 deriving Show
instance Functor Maybe where
  fmap func (Just2 x) = Just2 (func x)
  fmap func Nothing2 = Nothing2


instance Applicative Maybe2 where
    pure = Just2  
    -- Just2 func <*> (Just2 j) = Just2 (func j)
    Just2 func <*> j = fmap func j
    Nothing2 <*> j = Nothing2