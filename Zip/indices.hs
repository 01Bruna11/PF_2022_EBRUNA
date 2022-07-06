--Cria a funcao indices v xs que retorna todas as posições de xs onde o valor v aparece:
--ex: indices 0 [1,0,0,0,1] == [1,2,3]
--Utilize a função zip xs [0..] para criar um vetor de tuplas (valor, posição) e utilize a operação de filter ou list comprehension

indices :: Eq a => a -> [a] -> [Int]
indices v xs = [i | (x,i) <- zip xs [0..], x == v]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ indices a b
