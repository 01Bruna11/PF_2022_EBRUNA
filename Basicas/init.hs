--IN : Uma lista u
--OUT: Lista menos o último elemento
primeiros :: [a] -> [a]
primeiros [] = []
primeiros (x:xs) = x : primeiros xs

main = do
    a <- readLn :: IO [Int]
    print $ primeiros a
