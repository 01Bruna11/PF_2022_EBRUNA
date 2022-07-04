--IN: Uma lista U 
--OUT: A lista sem o maior elemento 
removerMaior :: Ord a => [a] -> [a]
removerMaior [] = []
removerMaior [x] = []
removerMaior (x:xs) = if x > maior xs then removerMaior xs else x:removerMaior xs

main = do
    a <- readLn :: IO [Int]
    print $ removerMaior a

