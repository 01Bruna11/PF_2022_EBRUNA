--IN: Uma lista U 
--OUT: A lista sem o maior elemento 
removeMaior :: Ord a => [a] -> [a]
removeMaior [] = []
removeMaior [x] = [x]
removeMaior (x:xs) = if x > maior then xs else x:removeMaior xs
    where maior = maximum xs

main = do
    a <- readLn :: IO [Int]
    print $ removeMaior a

