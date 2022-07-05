--IN : Lista u e valor x
--OUT: True se x ocorre exatamente uma vez em u e false do contrário
unico :: Eq a => [a] -> a -> Bool
unico [] _ = False
unico (x:xs) y
    | x == y = unico xs y
    | otherwise = unico xs y

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ unico b a
    return ()
    
