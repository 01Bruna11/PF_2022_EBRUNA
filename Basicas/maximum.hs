--IN : Lista u
--OUT: O maior valor de u
--OBS: Não usar função max ou maximum
maior :: [Int] -> Int
maior [] = 0
maior [x] = x
maior (x:xs) | x > maior xs = x
            | otherwise = maior xs          
main = do
    x <- readLn :: IO [Int]
    print $ maior x
