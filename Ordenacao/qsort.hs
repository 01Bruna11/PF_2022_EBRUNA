qsort [] = []
qsort (x:xs) = qsort [y | y <- xs, y < x] ++ [x] ++ qsort [y | y <- xs, y >= x]

main = do
    a <- readLn :: IO [Int]
    print $ qsort a
