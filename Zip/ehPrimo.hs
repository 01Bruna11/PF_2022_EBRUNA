--IN : Um natural n
--OUT: Verdadeiro se n é primo e falso do contrário
isPrime :: Int -> Bool
isPrime n = null [x | x <- [2..n-1], n `mod` x == 0]

main = do
    a <- readLn :: IO Int
    print $ isPrime a
