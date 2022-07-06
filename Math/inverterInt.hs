--IN : Um inteiro positivo x
--OUT: Um inteiro positivo equivalente a x, mas com os dígitos na ordem inversa
--Ex: rev 1923 == 3291
--Fazer com recursão de calda devolvendo o valor invertido e a base de 10 atual
--Decompor com unfoldr e dar o reverse
--Decompor na recursão e dar o reverse

rev :: Int -> (Int,Int)
rev x | x < 10 = (x,10)
      | otherwise = (x `mod` 10, x `div` 10)

main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ rev a
