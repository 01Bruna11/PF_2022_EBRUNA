--IN: Dois números naturais n e m
--OUT: Lista [m, m+1, m+2, ..., m+n-1]
sequencia :: Int -> Int -> [Int]
sequencia n m = [m, m+1..m+n-1]

main = do 
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ sequencia a b 

