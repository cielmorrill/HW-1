-- csci 312 programming languages
-- homework 1, problem 8: maps and sets
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

-- hasPath that takes a DAG and two nodes
-- returns True if there is a path from the first to the second in the DAG
hasPath :: DAG -> Node -> Node -> Bool
hasPath g a b =
    if a == b
        then True
        else any' (Set.map (\n -> hasPath g n b) (neighbors g a))

-- neighbors function returns the neighbors of a node
neighbors :: DAG -> Node -> Set.Set Node
neighbors g n = fromMaybe Set.empty (Map.lookup n g)

-- any' function returns True if any members of a set are True, and False otherwise.
any' :: Set.Set Bool -> Bool
any' = Set.foldr (||) False

main :: IO ()
main = do
    putStrLn "Hello, World!"
    print $ hasPath g a d      -- True
    print $ hasPath g a e      -- False
    print $ neighbors g a      -- fromList ["b","c"]
    print $ any' (Set.fromList [False, False, True])  -- True
    print $ any' (Set.fromList [False, False, False]) -- False  