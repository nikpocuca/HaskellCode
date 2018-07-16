-- Functions in Haskell


-- main = do 
-- putStrLn "What's your name"
--  name <- getLine
--  putStrLn ("Hello " ++ name)


import Data.List
import System.IO

-- funcName param1 param2 = operations (returned value)
--e.g. 

addMe :: Int -> Int -> Int 
addMe x y = x + y

-- implying types. 

sumMe x y = x + y 

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int) 
addTuples (x,y) (x2,y2) = (x + x2, y + y2)

whatAge :: Int -> String 

whatAge 16 = "You can Drive"
whatAge 18 = "You can vote"
whatAge 21 = "You are old"
whatAge _ = "Nothing Import" 


-- recurions. 

factorial :: Int -> Int 

factorial 0 = 1
factorial n = n * factorial (n-1)

prodFactorial n = product [1..n]


isOdd :: Int -> Bool 

isOdd n
  | mod n 2 == 0 = False 
  | otherwise = True 


whatGrade :: Int -> String

whatGrade age 
  | (age >= 5) && (age <= 6) = "Kindergarten"
  | (age > 6 ) = "You old"
  | otherwise = "I don't know you"

-- Batting Average Example 

batAvgRating :: Double -> Double -> String 

batAvgRating hits atBats 
 | avg <= 0.200 = "Terrible Batting Average" 
 | avg <= 0.250 = "Average Player"
 | avg <= 0.280 = "You are a good player" 
 | otherwise = " You are a really good"
 where avg = hits / atBats 



