-- csci 312 programming languages
-- homework 1, problem 1: natural recursion
-- ciel morrill

-- runghc hw1p1.hs
-- OR
-- ghci
-- :l hw1p1.hs (lowercase L, not 1)
-- main

func a b = a + b

-- sumUp sums a list of numbers
sumUp :: [Int] -> Int
sumUp []     = 0
sumUp (x:xs) = x + sumUp xs

-- evens returns a list of the even numbers from the input list
evens :: [Int] -> [Int]
evens []     = undefined
evens (x:xs) = undefined

-- incAll increments each number in the input list by 1
incAll :: [Int] -> [Int]
incAll = undefined

-- incBy increments each number in the input list by the given amount
incBy :: Int -> [Int] -> [Int]
incBy = undefined

-- append concatenates two lists (cannot use ++ operator)
append :: [Int] -> [Int] -> [Int]
append = undefined

main :: IO ()
main = do
  putStrLn "Hello, World!"
  print $ func 3 5