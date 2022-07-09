myToUpper c = head [snd y | y <- mapa c, fst y == c]  
    where mapa c = zip ['a'..'z'] ['A'..'Z'] ++ [(c, c)] 

upper = map myToUpper

main = do
    a <- getLine
    print $ upper a
