--IN : Duas listas a e b sem repetição de chaves
--OUT: Lista das chaves que a e b possuem em comum
intersec :: [Int] -> [Int] -> [Int]
intersec [] _ = []
intersec _ [] = []
intersec (x:xs) (y:ys)
    | x == y = x : intersec xs ys
    | x < y = intersec xs (y:ys)
    | otherwise = intersec (x:xs) ys
    
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intersec a b
