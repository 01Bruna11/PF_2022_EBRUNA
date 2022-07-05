final :: Int -> [Int] -> [Int]
final n xs = drop (length xs - n) xs

main = do 
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ final a b