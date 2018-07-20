
sum35 = sum [x | x <- [1..999], mod x 3 == 0 || mod x 5 ==0]


fib =
    let fib' 0 = 0
        fib' 1 = 1
        fib' n = fib (n - 1) + fib (n - 2)
    in  (map fib' [0 ..] !!)
-- Efficient use of fib.
sumfib = sum  [x | x <- map fib [1..50], x <= 1000000, even x]


