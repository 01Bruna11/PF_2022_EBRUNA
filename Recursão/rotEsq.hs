--IN : Um natural n e uma lista ou string S
--OUT: Lista S rotacionada n vezes à esquerda
rotate :: Int -> [a] -> [a]
rotate 0 xs = xs
rotate n [] = []
rotate n (x:xs) = rotate (n-1) xs ++ [x]

main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotate a b