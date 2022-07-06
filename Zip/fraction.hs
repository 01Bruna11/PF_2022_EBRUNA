--Escreva uma função reduce que recebe uma tupla(numerador/denomidador) e devolve a fração após redução.
fun (n, d) x
    | n `mod` x == 0 && d `mod` x == 0 = (n `div` x, d `div` x)
    | otherwise = (n, d)

fraq (n,d) = foldl fun (n,d) [2..n]
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ fraq (a,b)
