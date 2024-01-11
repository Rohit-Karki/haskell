module Main where
import Web.Scotty
import Data.Monoid(mconcat)


main = scotty 3000 $
    get "/:word" $ do
        word <- param "word"
        html $ mconcat ["<h1>", word, " World!</h1>"]