-- gerador 1 - recursão
gerador1 :: Int -> [Int]
gerador1 0 = []
gerador1 n = n : gerador1 (n - 1)

-- gerador 2 - list comprehension
gerador2 :: Int -> [Int]
gerador2 n = [n, n - 1 .. 1]

-- gerador 3 - unfoldr
gerador3 :: Int -> [Int]
gerador3 = unfoldr (\ x -> Just (x, x - 1))

--faça divisão inteira por 2 enquanto for possível
gerador4 :: Int -> [Int]
gerador4 n = takeWhile (>= 1) $ iterate (`div` 2) n

main = do
    -- gerador1 [0,1,-1,2,-2,3,-3...]
    print $ gerador1 1000
    -- gerador2 [1,-2,3,-4,5,-6...]
    print $ gerador2 1000
    -- gerador3 [1,2,4,8,16...]
    print $ gerador3 1000
    -- gerador4 1000 [1000, 500, 250, 125, 62, 31, 15, 7, 3, 1]
    print $ gerador4 1000
