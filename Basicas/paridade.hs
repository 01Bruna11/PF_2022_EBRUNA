--IN :  Lista u de valores booleanos
--OUT: Se o total de Trues é ímpar então retorne True e do contrário False
paridade :: [Bool] -> Bool
paridade [] = False
paridade (x:xs) = if (length (filter (==True) (x:xs)) `mod` 2 == 0) then False else True
main = do
    a <- readLn :: IO [Bool]
    print $ paridade a
