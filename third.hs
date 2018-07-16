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


