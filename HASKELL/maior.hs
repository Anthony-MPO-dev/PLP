--Determina o maior entre três valores
maxTres:: Int -> Int -> Int -> Int
maxTres x y z
    | x >= y && x >= z = x
    | y >= z = y
    | otherwise = z
