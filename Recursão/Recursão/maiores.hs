--IN : Número x e uma lista u
--OUT: Sublista de u cujos números sejam maiores que x
--OBS: Faça usando filter e CList
maiores :: Int -> [Int] -> [Int]
maiores x u = filter (\y -> y > x) u

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ maiores a b
