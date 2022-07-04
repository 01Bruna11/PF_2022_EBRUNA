--IN : Duas listas a e b
--OUT: Lista com os elementos de a e b intercalados
intercalar :: [Int] -> [Int] -> [Int]
intercalar [] [] = []
intercalar [] b = b
intercalar a [] = a
intercalar (a:as) (b:bs) = a : b : intercalar as bs
--se tem elementos nas duas listas, pegue um de cada
--se tem uma lista fazia, retorne a outra lista
intercalar (a:as) [] = a : intercalar as []
intercalar [] (b:bs) = b : intercalar [] bs
--pegue a lista menor e concatene ela com uma lista infinita de valores -1
--junte as listas num zip
--remonte a lista com um fold
--remova os elementos -1

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intercalar a b
