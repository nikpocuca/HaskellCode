import Data.List
import System.IO

areStringEq :: [Char] -> [Char] -> Bool
areStringEq [] [] = True
areStringEq (x:xs) (y:ys) = x == y && areStringEq xs ys
areStringEq _ _ = False


