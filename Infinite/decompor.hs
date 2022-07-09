import Distribution.Simple.Utils (xargs)
--Escreva uma função depara que recebe um inteiro e retorna uma lista com os dígitos divididos.
--crie usando recursão
--crie ultilizando unfoldr ou iterate
--ex: separa [123] [1,2,3]

separe :: Int -> [Int]
separe x
    | x < 10 = [x]
    | otherwise = separe (x `div` 10) ++ [x `mod` 10]

main = do
    a <- readLn :: IO Int
    print $ separe a