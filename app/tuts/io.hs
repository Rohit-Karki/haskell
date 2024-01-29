-- What Is An I/O Action?
-- Have the type IO t
-- Produce an effect when performed, but not when evaluated. That is, they only produce an effect when called by something else in an I/O context.
-- Any expression may produce an action as its value, but the action will not perform I/O until it is executed inside another I/O action (or it is main)

{-
    Haskell is 
        - lazy (great for modularity)
        - difficult to know when does it evaluate a function
        - pure ( functions don't have any "side effect", and always 
          return same result for the same input )

        - Problem: how do we actually have side effects (writing to the 
        screen/disk, networking, etc)
-}

------ do is a convenient way to define a sequence of actions. --------
import System.IO
import Data.Char(toUpper)


name2reply :: String -> String
name2reply name = 
    "Pleased to meet you, " ++ name ++ ".\n" ++
    "Your name contains " ++ charcount ++ " characters."
    where charcount = show (length name)


-- main :: IO ()
-- main = do 
--     putStrLn "Greetings once again.  What is your name?"
--     inpStr <- getLine
--     let outStr = name2reply inpStr
--     putStrLn outStr


main :: IO ()
main = do
    inh <- openFile "input.txt" ReadMode
    outh <- openFile "output.txt" WriteMode
    mainloop inh outh


mainloop :: Handle -> Handle -> IO ()
mainloop inh outh = 
    do ineof <- hIsEOF inh
       if ineof
           then return ()
           else do inpStr <- hGetLine inh
                   hPutStrLn outh (map toUpper inpStr)
                   mainloop inh outh


add :: Integer -> Integer -> IO (Integer)
add a b = do
    putStrLn "hello world"
    return (a+b)



-- hw is IO action which works with the environment (terminal) and performs the action(printing)
hw :: IO ()
hw = putStrLn "Rohit Raj Karki"

-- greet is a IO action 
greet :: IO String
greet = do 
    putStrLn "What is your name?"
    name <- getLine 
    let uname = map toUpper name
    putStrLn ("Hello " ++ name ++ "." )

main :: IO ()
main = do
    i <- getLine
    if i /= "quit" then do
        putStrLn ("Input" ++ i)
        main 
    else 
        -- Encapsulate the empty tuple to the IO action
        return ()