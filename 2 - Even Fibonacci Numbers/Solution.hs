-- Even Fibonacci Numbers
-- https://projecteuler.net/problem=2

module Solution where

-- Upper Bond Limit Fibbonaci Number
limit :: Int
limit = 4_000_000

-- Fibonacci Recursive Function Definition
-- oneliner: fib :: Int -> Int; fib 1 = 1; fib 2 = 1; fib n = fib (n-1) + fib (n-2)
fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

-- Use all above
solution :: Int 
solution = sum $ filter even $ takeWhile (< limit) [fib x | x <- [1..]]
