
import Data.List

-- trying to get the maximum of an array.
--
--
max :: [Int] -> Int
max (x:xs) [y | y <- xs, y < x]

