-- csci 312 programming languages
-- homework 1, problem 5: defining higher-order functions
-- ciel morrill

-- runghc hw1p5.hs
-- OR
-- ghci
-- :l hw1p5.hs (lowercase L, not 1)
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

-- define our own versions of the map and filter functions manually
-- using only natural recursion and folds—no using the Prelude or list comprehensions

-- define map using natural recursion
map1 :: (a -> b) -> [a] -> [b]
map1 f [] = []
map1 f (x:xs) = f x : map1 f xs

-- define filter1 using natural recursion
filter1 :: (a -> Bool) -> [a] -> [a]
filter1 p [] = []
filter1 p (x:xs) = if p x then x : filter1 p xs else filter1 p xs

main :: IO ()
main = do
    putStrLn "Hello, World!"
    print $ map1 (+1) [1,2,3]          -- [2,3,4]
    print $ filter1 even [1,2,3,4,5]  -- [2,4]