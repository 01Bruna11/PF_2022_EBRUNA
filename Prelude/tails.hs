--IN : Uma lista u
--OUT: Retorna a lista dos segmentos iniciais, os mais curtos no fim

mytails :: [a] -> [[a]]
mytails [] = [[]]
mytails (x:xs) = (x:xs) : mytails xs

main = do
    a <- readLn :: IO [Int]
    print $ mytails a

    