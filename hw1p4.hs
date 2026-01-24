-- csci 312 programming languages
-- homework 1, problem 4: map and filter
-- ciel morrill

-- runghc hw1p4.hs
-- OR
-- ghci
-- :l hw1p4.hs (lowercase L, not 1)
-- main

-- define each of the functions defined in Problem 1, but using higher-order functions built into the Prelude.
-- In particular: map, filter, and the two folds, foldr and foldl. 

-- sumUp returns the sum of all numbers in the input list
sumUp' :: [Int] -> Int
sumUp' l = foldl (+) 0 l

-- evens returns a list of the even numbers from the input list
evens' :: [Int] -> [Int]
evens' l = filter even l

-- incAll increments each number in the input list by 1
incAll' :: [Int] -> [Int]
incAll' l = map (+1) l

-- incBy increments each number in the input list by the given amount
incBy' :: Int -> [Int] -> [Int]
incBy' n l = map (+n) l

main :: IO ()
main = do
    putStrLn "Hello, World!"
    print $ sumUp' [1,2,3,4,5]
    print $ evens' [1,2,3,4,5,6]
    print $ incAll' [1,2,3]
    print $ incBy' 5 [1,2,3]