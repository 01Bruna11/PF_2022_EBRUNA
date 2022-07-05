--IN :Lista u e um natural n
--OUT: Tupla de duas listas, (A,B), onde A é formada pelas n primeiras chaves de u e B pelos elementos restantes}
split :: (Ord a) => [(a,b)] -> ( [(a,b)], [(a,b)] )
split [] = ([],[])
split (x:xs) = (x:a,b)
    where (a,b) = split xs
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ split a b
