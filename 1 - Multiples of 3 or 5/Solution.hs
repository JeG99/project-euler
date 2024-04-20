-- Multiples of 3 or 5
-- https://projecteuler.net/problem=1

module Solution where

multiplesSum n = sum [ x | x <- [1..(n - 1)], x `mod` 3 == 0 || x `mod` 5 == 0 ]

solution :: Integer -> Integer
solution = multiplesSum
