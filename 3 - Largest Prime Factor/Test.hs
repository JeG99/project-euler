module Test where

isPrime :: Integer -> Bool
isPrime n
    | n <= 1    = False
    | otherwise = null [ x | x <- [2..isqrt n], n `mod` x == 0 ]
    where
        isqrt = floor . sqrt . fromIntegral

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor n = last [ x | x <- [2..isqrt n], n `mod` x == 0, isPrime x ]
    where isqrt = floor . sqrt . fromIntegral

main :: IO ()
main = do
    print ( largestPrimeFactor 13195 )
    print ( largestPrimeFactor 600851475143 )