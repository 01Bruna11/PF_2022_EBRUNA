--Defina uma função somaImpares tal que somaImpares xs devolve a soma dos elementos ímpares de uma lista.
somaImpares :: [Int] -> Int
somaImpares [] = 0
somaImpares (x:xs) | odd x = x + somaImpares xs
                  | otherwise = somaImpares xs
main = do
    a <- readLn :: IO [Int]
    print $ somaImpares a
