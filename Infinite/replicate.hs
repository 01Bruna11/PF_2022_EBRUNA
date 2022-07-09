--escreva a função replicate do prelude ultilizando recursão

replicate' :: Int -> a -> [a]
replicate' 0 _ = []
replicate' n x = x : replicate' (n-1) x

main = do
    print $ replicate' 4 0 == [0, 0, 0, 0]
    print $ replicate' 2 True == [True, True]
    print $ replicate' 3 'x' == "xxx"
    