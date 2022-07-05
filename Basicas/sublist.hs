--Defina a função sublist que obtém uma sublista passando início, fim e a lista. Se forem utilizados números negativos, interprete-os como sendo contando a partir do fim da lista. O índice final não entra na lista.
sublist :: Int -> Int -> [a] -> [a]
sublist _ _ [] = []
sublist i f l = take (f-i) (drop i l)
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO [Int]
    print $ sublist a b c
