menores :: Int -> [Int] -> [Int]
menores 0 _ = []
menores n [] = []
menores n (x:xs) = if n > length (x:xs) then menores (n-1) xs else menores n xs ++ [x]

main = do 
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ menores a (menores b [1..])

