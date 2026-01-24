-- csci 312 programming languages
-- homework 1, problem 6: Maybe and Either
-- ciel morrill

-- runghc hw1p6.hs
-- OR
-- ghci
-- :l hw1p6.hs (lowercase L, not 1)
-- main

import qualified Data.Map as Map
import qualified Data.Set as Set
import Data.Maybe

type Node = String
type DAG = Map.Map Node (Set.Set Node)

-- Instead of relying on null values, Haskell provides a special datatype called Maybe.
-- This datatype allows you to “wrap” a result value in a way that forces you to deal with exceptional situations. 

-- Write a function sqrt' that returns Just x if its input value x is non-negative, and returns Nothing otherwise:
sqrt' :: Float -> Maybe Float
sqrt' x = if x >= 0 then Just (sqrt x) else Nothing

-- To finish this problem, write a function div’ that returns either an error message or correct value, depending on whether its second input is zero:
div' :: Float -> Float -> Either String Float
div' _ 0 = Left "Error: Division by zero"
div' x y = Right (x / y)

main :: IO ()
main = do
    putStrLn "Hello, World!"
    print $ sqrt' 9        -- Just 3.0
    print $ sqrt' (-4)    -- Nothing
    print $ div' 10 2     -- Right 5.0
    print $ div' 10 0     -- Left "Error: Division by zero"