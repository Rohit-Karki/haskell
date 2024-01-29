-- shall we be pure or impure 
-- Pure -> If program are mathematical function 
-- Impure -> Program have side effects

-- a functor is a typeclass 
-- a typeclass is like interface but much powerful

class Functor f where 
    fmap :: (a->b)->f a->f b

data Maybe a = Just a | Nothing deriving show


-- Functor basically what it does is it just applies a function to the wrapped values
-- So the wrapped values mean Just 3 3 is wrapped inside Just 
instance Functor Maybe where
  fmap func (Just x) = Just (func x)
  fmap func Nothing = Nothing

-- Haskell defines a functors for Maybe, Either, Lists

data Tree a = Tip a | Branch (Tree a ) (Tree a)

instance Functor Tree where
    fmap func (Tip a) = Tip (func a)
    fmap func Branch left right = Branch (fmap func left) (fmap func right)  -- fmap func left = func <$> left