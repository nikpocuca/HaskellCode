import Data.List
import System.IO

getListItems :: [Int] -> String

getListItems [] = "Empty List"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ "and " ++ show y
getListItems (x:xs) = "The first item is " ++ show x ++ " and the rest are " ++ show xs

getFirstItem :: String -> String

getFirstItem [] = "Empty String"

first10 = [1..10]

double10 = map (\x -> x * 2) first10

times4 :: Int -> Int
times4 x  = x * 4

listTimes4 = map times4 [10..20]

-- creating map from scratch.
multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

