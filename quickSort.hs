import Data.List
import System.IO

-- Using filter
-- This is taken from wikipedia.
quickSort []     = []
quickSort (x:xs) = quickSort (filter (<x) xs)
                   ++ [x] ++
                   quickSort (filter (>=x) xs)

-- My rendition
-- two liner, wow
q2 [] = []
q2 (x:xs) = q2 [y | y <- xs, y <x]  ++ [x] ++ q2 [ y | y <- xs, x <= y]


-- Lets try another sort
-- inzrt = foldr insert []


-- attempt at another sort.

--zrt :: [Integer] -> [Integer]
--swap :: Integer -> Integer -> [Integer]
--swap x y = if x <= y then [x,y] else [y,x]
--zrt (x:y:xs) = [head (swap x y)] ++ zrt ([last (swap x y)] ++ xs )
--zrt [] = []
--zrt [x] = [x]

--isSorted [] = True
--isSorted [x] = True
--isSorted (x:y:xs) = x <= y && isSorted (y:xs)

srt :: [Integer] -> [Integer]
srt (x:xs) = if isSorted (zrt (x:xs)) then (zrt (x:xs)) else (srt (zrt (x:xs)))
  where
    isSorted [] = True
    isSorted [x] = True
    isSorted (x:y:xs) = x <= y && isSorted (y:xs)
    swap x y = if x <= y then [x,y] else [y,x]
    zrt (x:y:xs) | [head (swap x y)] ++ zrt ([last (swap x y)] ++ xs )
    zrt [] = []
    zrt [x] = [x]

a = [1,-10,3,100,-10,-5,99,-250,0,0,10,10]


-- srt :: [Integer] -> [Integer]
-- srt (x:xs) = if isSorted (zrt (x:xs)) then (zrt (x:xs)) else (srt (zrt (x:xs)))


