-- csci 312 programming languages
-- homework 1, problem 2: data types
-- ciel morrill

-- runghc hw1p2.hs
-- OR
-- ghci
-- :l hw1p2.hs (lowercase L, not 1)
-- main

data IntTree 
    = Empty
    | Node IntTree Int IntTree deriving (Eq,Show) -- simple tree
    --                 Node
    -- left IntTree    Int     right IntTree

-- isLeaf returns True if the given tree node is a leaf (has no children)
isLeaf :: IntTree -> Bool
isLeaf Empty = False
isLeaf (Node l x r) = l == Empty && r == Empty

-- sumTree returns the sum of all the integers in the tree
sumTree :: IntTree -> Int
sumTree Empty = 0
sumTree (Node l x r) = sumTree l + x + sumTree r

-- fringe returns a list of the integers at the leaves of the tree, left to right
fringe :: IntTree -> [Int]
fringe Empty = []
fringe (Node l x r)
    | isLeaf (Node l x r) = [x]
    | otherwise = fringe l ++ fringe r

main :: IO ()
main = do
    putStrLn "Hello, World!"
    let tree1 = Node (Node Empty 1 Empty) 2 (Node Empty 3 Empty)
    let tree2 = Node (Node (Node Empty 4 Empty) 5 (Node Empty 6 Empty)) 7 (Node Empty 8 Empty)
    let tree3 = Node (Node Empty 1 (Node Empty 2 Empty)) 5 (Node (Node Empty 7 Empty) 10 Empty)

    print $ isLeaf Empty                     -- False
    print $ isLeaf (Node Empty 1 Empty)     -- True
    print $ isLeaf (Node (Node Empty 1 Empty) 2 Empty) -- False
    print $ sumTree tree1                    -- 6
    print $ sumTree tree2                    -- 30
    print $ fringe tree1                      -- [1,3]
    print $ fringe tree2                      -- [4,6,8]
    print $ fringe tree3                      -- [2,7]