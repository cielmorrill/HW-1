-- csci 312 programming languages
-- homework 1, problem 7: Creating polymorphic datatypes
-- ciel morrill

-- runghc hw1p7.hs
-- OR
-- ghci
-- :l hw1p7.hs (lowercase L, not 1)
-- main

-- Write a function swap that takes a pair of type (a,b) and returns a pair of type (b,a).
swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)

-- Write a function pairUp that takes two lists and returns a list of paired elements.
-- If the lists have different lengths, return a list of the shorter length.
-- Don’t define this function using zip!
pairUp :: [a] -> [b] -> [(a,b)]
pairUp [] _ = []
pairUp _ [] = []
pairUp (x:xs) (y:ys) = (x,y) : pairUp xs ys

-- Write a function splitUp that takes a list of pairs and returns a pair of lists.
-- (This is called unzip in the prelude. Don’t define this function using unzip!)
splitUp :: [(a,b)] -> ([a],[b])
splitUp [] = ([],[])
splitUp (x:xs) = let (as,bs) = splitUp xs
                 in (fst x : as, snd x : bs)

-- Write a function sumAndLength that simultaneously sums a list and computes its length.
-- You can define it using natural recursion or as a fold, but—traverse the list only once!
-- use Where?
sumAndLength :: [Int] -> (Int,Int)
sumAndLength [] = (0,0)
sumAndLength xs = foldl (\(sum,len) x -> (sum + x, len + 1)) (0,0) xs

main :: IO ()
main = do
    putStrLn "Hello, World!"
    print $ swap (1,"a")               -- ("a",1)
    print $ pairUp [1,2,3] ["a","b"]   -- [(1,"a"),(2,"b")]
    print $ splitUp [(1,"a"),(2,"b")]  -- ([1,2],["a","b"])
    print $ sumAndLength [1,2,3,4,5]   -- (15,5)