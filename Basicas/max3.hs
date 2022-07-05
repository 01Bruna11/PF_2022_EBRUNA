max3 :: Int -> Int -> Int -> Int
max3 x y z = max (max x y) z
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ max3 a b c
