--Crie a função produtoEscalar utilizando a função zip para percorrer os vetores elemento a elemento.
--produtoEscalar [1,2,3] [4,5,6] 
--(1 * 4) + (2 * 5) + (3 * 6) => 32

produtoEsc :: [Int] -> [Int] -> Int
produtoEsc [] [] = 0
produtoEsc xs ys = sum (zipWith (*) xs ys)

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ produtoEsc a b
