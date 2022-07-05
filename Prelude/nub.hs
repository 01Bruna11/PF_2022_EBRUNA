--IN : Lista u com possíveis chaves repetidas
--OUT: Lista com as chaves de u sem repetições na ordem que a primeira ocorrência aparece
--mynub [1,1,1] == [1]

import Data.List

mynub :: Eq a => [a] -> [a]
mynub [] = []
mynub (x:xs) = x : mynub (filter (/= x) xs)

main = do
    a <- readLn :: IO [Int]
    print $ mynub a