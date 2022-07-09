vetFib :: Int -> [Int]
vetFib 0 = [0]
vetFib 1 = [0,1]
vetFib 2 = [0,1,1]
vetFib n = vetFib (n - 3) ++ [n - 2] 


main = do
    a <- readLn :: IO Int
    print $ vetFib a
