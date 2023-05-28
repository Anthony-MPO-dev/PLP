serie :: (Float, Int) -> Float
serie (x, n) = serie' x n 1 0
    where
        serie' :: Float -> Int -> Int -> Float -> Float
        serie' _ 0 _ soma = soma
        serie' x n i soma
            | i `mod` 2 /= 0 = serie' x (n - 1) (i + 1) (soma + (fromIntegral i / x))
            | otherwise = serie' x (n - 1) (i + 1) (soma + (x / fromIntegral i))