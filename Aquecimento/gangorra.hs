gangorra :: Int -> Int -> Int -> Int -> Int
gangorra p1 c1 p2 c2
    | (p1 * c1) == (p2 * c2) = 0
    | (p1 * c1) > (p2 * c2) = -1
    | otherwise = 1
main = do
    p1 <- readLn :: IO Int
    p2 <- readLn :: IO Int
    c1 <- readLn :: IO Int
    c2 <- readLn :: IO Int
    print $ gangorra p1 p2 c1 c2
