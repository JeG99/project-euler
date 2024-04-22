module Test where

isPalindrome :: Int -> Bool 
isPalindrome x = (==) (show x) (reverse $ show x) 

productList :: [Int]
productList = [z | x<-[100..999], y<-[100..999], let z = x*y, isPalindrome z] 

r :: Int
r = maximum productList