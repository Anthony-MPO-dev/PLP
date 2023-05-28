
existeT:: Float -> Float -> Float -> Bool
existeT a b c
    | a + b > c && a + c > b && b + c > a = True
    | otherwise = False

verificaTipo :: Float -> Float -> Float -> String
verificaTipo a b c
    | a == b && b == c = "Equilatero"
    | a == b || a == c || b == c = "Isosceles"
    | otherwise = "Escaleno"

trianguloTipo:: (Float,Float,Float) -> String
trianguloTipo (a, b, c) = if existeT a b c == True then (verificaTipo a b c) ++ " " ++ show (a + b + c) else "Nao Existe"

