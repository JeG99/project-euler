@echo off
ghc .\Solution.hs
ghc -o run .\Main.hs
echo Result:
.\run
