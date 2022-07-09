--escreva a função repeat do prelude ultilizando recursão
repeat' :: a -> [a]
repeat' x = x : repeat' x

--ex: take 3 $ myrepeat 4 == [4,4,4]
--ex: take 2 $ myrepeat 5 == [5,5]

main = do
    print $ take 3 $ repeat' 4
    print $ take 2 $ repeat' 5
    print $ take 3 $ repeat' 6
    print $ take 3 $ repeat' 7
    