--IN : Lista u e valor x
--OUT: O total de ocorrências de x em u
frequencia :: Eq a => [a] -> a -> Int
frequencia [] _ = 0
frequencia (x:xs) y
 | x == y = 1 + frequencia xs y
 | otherwise = frequencia xs y

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia b a



