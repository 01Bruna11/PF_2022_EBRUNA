--IN : Valor x e lista u
--OUT: Versão de u removendo primeira aparição de x
deletee :: Eq a => a -> [a] -> [a]
deletee _ [] = []
deletee x (y:ys)
    | x == y = ys
    | otherwise = y : deletee x ys

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ deletee a b 