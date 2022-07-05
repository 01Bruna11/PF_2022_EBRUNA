--defina a função countNeg xs que computa o numeor de elementos negativos em ums lista xs
countNeg :: [Int] -> Int 
countNeg [] = 0
countNeg (x:xs) = if x < 0 then 1 + countNeg xs else countNeg xs
main = do
    a <- readLn :: IO [Int]
    print $ countNeg a
