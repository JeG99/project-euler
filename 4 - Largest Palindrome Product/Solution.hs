-- Largest Palindrome Product
-- https://projecteuler.net/problem=4

module Solution where

-- You do you
isPalindrome :: Int -> Bool 
isPalindrome x = (==) (show x) (reverse $ show x) 

productList :: [Int]
productList = [z | x<-[100..999], y<-[100..999], let z = x*y, isPalindrome z] 

solution :: String
solution = show $ maximum productList