--IN : Lista de números u
--OUT: Lista de listas. Cada lista-componente possui um ou dois elementos. Quando possui dois, representa uma sequência de chaves repetidas de u, sendo o primeiro valor a chave que se repete e o segundo o total de repetições. Quando possui um elemento contém uma chave de u que não se repete.

compac :: [Int] -> [[Int]]
compac [] = []
compac (x:xs) = (if  x `notElem` xs then
                    [x]
                 else
                    [x, length (filter (== x) xs)]
                ) : compac (filter (/= x) xs)

main = do
    a <- readLn :: IO [Int]
    print $ compac a
