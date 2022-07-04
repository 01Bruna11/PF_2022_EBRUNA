--In: inteiro n 
--Out: Lista [1, -1, 2, -2, 3, -3, ..., n, -n]

alter :: Int -> [Int]
alter n = [x | x <- [1..n], x `mod` 2 == 0] ++ [x | x <- [1..n], x `mod` 2 == 1]
main = do
    a <- readLn :: IO Int
    print $ alter a
