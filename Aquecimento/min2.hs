--IN : Dois números, x e y
--OUT: Menor valor entre x e y
minimo :: Int -> Int -> Int
minimo x y
    | x < y = x
    | otherwise = y
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ minimo a b

