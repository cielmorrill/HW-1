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