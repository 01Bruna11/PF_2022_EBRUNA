fatorial :: Int -> Int
fatorial 0 = 1
fatorial n = n * fatorial (n-1)
main = do
    a <- readLn :: IO Int
    print $ fatorial a
