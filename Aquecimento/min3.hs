--IN : Três números, x, y e z
--OUT: Menor valor entre x, y e z
min3 :: Int -> Int -> Int -> Int
min3 x y z = if x < y && x < z then x else if y < x && y < z then y else z
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ min3 a b c