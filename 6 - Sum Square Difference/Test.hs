module Test where

powerSum :: Int -> Int -> Int
powerSum power n = sum [x^power | x <- [1..n]]

solution :: Int
solution = (powerSum 1 100)^2 - powerSum 2 100