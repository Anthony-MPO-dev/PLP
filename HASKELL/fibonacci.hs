fib n = fiblist !! n
    where
        fiblist = 1:1:[a+b | (a,b) <- zip fiblist (tail fiblist) ]


fibonacci x n = [fib x | x <- [1..n]]  