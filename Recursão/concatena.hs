--IN : Duas listas a e b
--OUT: Concatenação entre a e b

-- ex: concatena [] [3,4] == [3,4]
--OBS: não pode usar o operador de ++, apenas o :

concatena :: [Int] -> [Int] -> [Int]
concatena as b = foldr (:) b as

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ concatena a b
