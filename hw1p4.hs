-- csci 312 programming languages
-- homework 1, problem 4: map and filter
-- ciel morrill

-- runghc hw1p4.hs
-- OR
-- ghci
-- :l hw1p4.hs (lowercase L, not 1)
-- main

import qualified Data.Map as Map
import qualified Data.Set as Set
import Data.Maybe

type Node = String
type DAG = Map.Map Node (Set.Set Node)

a = "a"
b = "b"
c = "c"
d = "d"
e = "e"

g = Map.fromList [(a, Set.fromList [b,c]),
                  (b, Set.fromList [d]),
                  (c, Set.fromList [d]),
                  (d, Set.fromList []),
                  (e, Set.fromList [a, c])]

-- define each of the functions defined in Problem 1, but using higher-order functions built into the Prelude.
-- In particular: map, filter, and the two folds, foldr and foldl. 

-- sumUp returns the sum of all numbers in the input list
sumUp' :: [Int] -> Int
sumUp' l = map (+ xs) [x:xs]

-- evens returns a list of the even numbers from the input list
evens' :: [Int] -> [Int]
evens' l = undefined

-- incAll increments each number in the input list by 1
incAll' :: [Int] -> [Int]
incAll' l = undefined

-- incBy increments each number in the input list by the given amount
incBy' :: Int -> [Int] -> [Int]
incBy' n l = undefined

main :: IO ()
main = do
  putStrLn "Hello, World!"