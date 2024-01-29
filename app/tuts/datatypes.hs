module NewTypes where

data Data = MkData Int
data StrictData = MkStrict !Int
newtype NewData = MkNew Int


