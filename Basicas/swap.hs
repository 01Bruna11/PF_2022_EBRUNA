swap :: [a] -> Int -> Int -> [a] 
swap u p q = (take p u) ++ [u!!q] ++ (drop (p+1) u) ++ [u!!p] ++ (drop (q+1) u)
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ swap a b c
