-- Expressions are evaluated by a stepwise process of applying functions to their arguments.
fmap :: (Functor f) => (a -> b) -> f a -> f b

data Option a
  = Some a
  | None

instance Functor Option where
  fmap f (Some a) = Some (f a)
  fmap f None = None

data Maybe a = Nothing | Just a

-- Finally a parser might not always produce a tree, so we generalize the to a value of any type
type Parser a = String -> [(a, String)]