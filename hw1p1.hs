-- csci 312 programming languages
-- homework 1, problem 1: natural recursion
-- ciel morrill

-- runghc hw1p1.hs
-- OR
-- ghci
-- :l hw1p1.hs (lowercase L, not 1)
-- main


-- sumUp sums a list of numbers
sumUp :: [Int] -> Int
sumUp []     = 0
sumUp (x:xs) = x + sumUp xs

-- evens returns a list of the even numbers from the input list
evens :: [Int] -> [Int]
evens []     = []
evens (x:xs)
  | x `mod` 2 == 0 = x : evens xs
  | otherwise    = evens xs

-- incAll increments each number in the input list by 1
incAll :: [Int] -> [Int]
incAll [] = []
incAll (x:xs) = (x + 1) : incAll xs

-- incBy increments each number in the input list by the given amount
incBy :: Int -> [Int] -> [Int]
incBy n [] = []
incBy n (x:xs) = (x + n) : incBy n xs

-- append concatenates two lists (cannot use ++ operator)
append :: [Int] -> [Int] -> [Int]
append [] ys = ys
append (x:xs) ys = x : append xs ys

main :: IO ()
main = do
  putStrLn "Hello, World!"
  print $ sumUp [1,2,3,4,5]
  print $ sumUp []
  print $ evens [1,2,3,4,5,6]
  print $ evens [1,3,5]
  print $ incAll [1,2,3]
  print $ incBy 5 [1,2,3]
  print $ append [1,2,3] [4,5,6]