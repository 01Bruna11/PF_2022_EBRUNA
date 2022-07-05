filterMaybe :: [Maybe Int] -> [Int]
--Dado um vetor de Maybe [Int], filtre apenas os valores que são formados por Just
filterMaybe [] = []
filterMaybe (Nothing:xs) = filterMaybe xs
filterMaybe (Just x:xs) = x : filterMaybe xs

main = do 
    print (filterMaybe [Just 5, Nothing, Just 7, Nothing])
    print (filterMaybe [Just 5, Nothing, Just 7, Just 3])
    print (filterMaybe [Just 5, Nothing, Just 7, Just 3, Nothing])
    print (filterMaybe [Just 5, Nothing, Just 7, Just 3, Just 4])
