-- csci 312 programming languages
-- homework 1, problem 3: binary search tree
-- ciel morrill

-- runghc hw1p3.hs
-- OR
-- ghci
-- :l hw1p3.hs (lowercase L, not 1)
-- main

-- Write a function isBST to determine whether or not a given tree is a strict binary search tree,
-- i.e., the tree is either empty, or it is node such that:

    -- all values in the left branch are less than the value of the node, and
    -- all values in the right branch are greater than the value of the node,
    -- both children are BSTs.

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

data IntTree 
    = Empty
    | Node IntTree Int IntTree deriving (Eq,Show)

isBST :: IntTree -> Bool
isBST Empty = True
isBST (Node l x r) = isBST l && isBST r && allLess l x && allGreater r x

allLess :: IntTree -> Int -> Bool
allLess Empty _ = True
allLess (Node l x r) n = x < n && allLess l n && allLess r n

allGreater :: IntTree -> Int -> Bool
allGreater Empty _ = True
allGreater (Node l x r) n = x > n && allGreater l n && allGreater r n

main :: IO ()
main = do
    putStrLn "Hello, World!"
    let bst1 = Node (Node Empty 1 Empty) 2 (Node Empty 3 Empty)
    let bst2 = Node (Node (Node Empty 4 Empty) 5 (Node Empty 6 Empty)) 7 (Node Empty 8 Empty)
    let nonbst1 = Node (Node Empty 3 Empty) 2 (Node Empty 1 Empty)
    let nonbst2 = Node (Node Empty 5 Empty) 3 (Node Empty 4 Empty)
    print $ isBST bst1        -- True
    print $ isBST bst2        -- True
    print $ isBST nonbst1     -- False
    print $ isBST nonbst2     -- False