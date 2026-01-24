-- csci 312 programming languages
-- homework 1, problem 7: Creating polymorphic datatypes
-- ciel morrill

-- runghc hw1p7.hs
-- OR
-- ghci
-- :l hw1p7.hs (lowercase L, not 1)
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

-- Write a function swap that takes a pair of type (a,b) and returns a pair of type (b,a).
swap :: (a,b) -> (b,a)
swap = undefined

-- Write a function pairUp that takes two lists and returns a list of paired elements.
-- If the lists have different lengths, return a list of the shorter length.
-- Don’t define this function using zip!
pairUp :: [a] -> [b] -> [(a,b)]
pairUp = undefined

-- Write a function splitUp that takes a list of pairs and returns a pair of lists.
-- (This is called unzip in the prelude. Don’t define this function using unzip!)
splitUp :: [(a,b)] -> ([a],[b])
splitUp = undefined

-- Write a function sumAndLength that simultaneously sums a list and computes its length.
-- You can define it using natural recursion or as a fold, but—traverse the list only once!
sumAndLength :: [Int] -> (Int,Int)
sumAndLength l = undefined

main :: IO ()
main = do
    putStrLn "Hello, World!"
    print $ swap (1,"a")               -- ("a",1)
    print $ pairUp [1,2,3] ["a","b"]   -- [(1,"a"),(2,"b")]
    print $ splitUp [(1,"a"),(2,"b")]  -- ([1,2],["a","b"])
    print $ sumAndLength [1,2,3,4,5]   -- (15,5)