--implemente a função reverse com recursão
--In: Lista u
--Out: Lista das chaves de u na ordem inversa
reverso :: [Int] -> [Int]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]

main = do 
    a <- readLn :: IO [Int] 
    print $ reverso a
    