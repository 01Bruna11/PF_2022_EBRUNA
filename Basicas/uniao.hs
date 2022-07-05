uniao :: Eq a => [a] -> [a] -> [a]
uniao [] [] = []
uniao [] b = b
uniao a [] = a
uniao (a:as) b
    | elem a b = uniao as b
    | otherwise = a : uniao as b

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ uniao a b
