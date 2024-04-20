-- Multiples of 3 or 5
-- https://projecteuler.net/problem=1

module Test where
import qualified Data.Set as Set

main :: IO ()
main = do
    print (sum [ x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0 ])
    print (sum (Set.fromList ([ x | x <- [1..999], x `mod` 3 == 0 ] ++ [ x | x <- [1..999], x `mod` 5 == 0 ])))
    print (sum ([ x | x <- [1..999], x `mod` 3 == 0 ] ++ [ x | x <- [1..999], x `mod` 5 == 0 ]) - sum [ x | x <- [1..999], x `mod` 15 == 0 ])
    