--IN : Lista de números u
--OUT: Verdadeiro se u é ordenada e falso do contrário
--ordenada [1,2,3,5] == True

ordenada [] = True
ordenada [x] = True
ordenada (x:y:xs) = x <= y && ordenada (y:xs)

main = do
    a <- readLn :: IO [Int]
    print $ ordenada a
