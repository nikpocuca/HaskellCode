-- #!/usr/bin/env runhaskell 
-- a = 2 + 3
-- main = putStrLn a
import Data.List
import System.IO

-- Int -2^63, 2^63 
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Integer, unbounded whole number? Big as your memory can hold

addEx = 5 + 5
subEx = 5 - 4 
multEx = 5 * 4
divEx = 5 / 4

-- prefix operator 
modEx = mod 5 4 
-- infix operator 
modEx2 = 5 `mod` 4 

-- addition of a negative number requires brackets 

negNumEx = 5 + (-4) 

-- integer of 9, but needs to be converted. 
num9 = 9 :: Int 
sqrtOf9 = sqrt (fromIntegral num9)

-- Boolean 
trueAndFalse = True && False 
trueOrFalse = True || False 

-- Lists in Haskell 
primeNumbers = [3,5,7,11]

morePrime = primeNumbers ++ [13,17,19,23,29]
favNums = 2 : 7 : 21 : 66 :[]
multList = [[3,5,7],[11,13,17]]
lenPrimes = length morePrime

-- List operations 
isListEmpty = null morePrime

-- multiple functions 
productMult = product (multList !! 0)
listTimes = [x * 2 | x <- [1..10], x * 3 <= 50]

divisBy9N13  = [x | x <- [1..500], (mod x 13) == 0, (mod x 9) == 0]

listBiggerThen5 = filter (>15) listTimes 

evensUpTo20 = takeWhile (<=100) [2,4..]

-- foldl and foldr do operations from left to right. 

pow3List = [3^n | n <- [1..10]]

multTable = [[x*y | y <- [1..10]] | x <- [1..10]]

-- tuples. 

bobSmith = ("Bob Smith", 52)

bobsName = fst bobSmith 

bobsAge = snd bobSmith

-- Zip function. 

names = ["Bob", "Mary", "Tom"]
addresses = ["123 Main", "234 North", "567 South"]

directory = zip names addresses
