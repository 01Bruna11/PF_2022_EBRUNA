--IN : Um natural n e uma lista ou string S
--OUT: Lista S rotacionada n vezes à direita
rotDir :: Int -> [a] -> [a]
rotDir 0 s = s
rotDir n s = rotDir (n-1) (tail s ++ [head s])

main = do 
    a <- readLn :: IO Int
    b <- getLine
    print $ rotDir a b