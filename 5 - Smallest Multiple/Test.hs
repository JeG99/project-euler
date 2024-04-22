module Test where

isqrt :: Integer -> Integer
isqrt = floor . sqrt . fromIntegral

firstIntegerDivisors :: Integer -> [Integer]
firstIntegerDivisors n = take (fromIntegral n) [ x | x <- [1..isqrt n], n `mod` x == 0 ]

smallestMultiple :: Integer -> Integer
smallestMultiple n = last [ x | x <- [1..(isqrt . product) [1..n]], product [1..n] == product (take (fromIntegral n) (firstIntegerDivisors x)) ]

