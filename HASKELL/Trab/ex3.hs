somaP :: Int -> Int
somaP n = somaP' n 0
  where
    somaP' :: Int -> Int -> Int
    somaP' 0 soma = soma
    somaP' k soma
      | k `mod` 2 /= 0 = somaP' (k - 1) (soma + k)
      | otherwise  = somaP' (k - 1) soma


