--Defina a função interior tal que (interior xs) é uma lista obtida eliminando os extremos da lista xs. 
--exemplo: interior [1,2,3,4,5] = [2,3,4]
--Dica: use a função drop e take.
interior :: [a] -> [a]
interior xs = drop 1 (take (length xs - 1) xs)

main = do
    a <- readLn :: IO [Int]
    print $ interior a
