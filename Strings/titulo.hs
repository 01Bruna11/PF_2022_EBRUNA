myToUpper :: Char -> Char
-- agora pegamos a posicao onde ele aparece primeiro
myToUpper c = head [snd y | y <- mapa c, fst y == c]
    where mapa c = zip ['a'..'z'] ['A'..'Z'] ++ [(c, c)]

myToLower :: Char -> Char
myToLower c = head [snd y | y <- mapa c, fst y == c]
    where mapa c = zip ['A'..'Z'] ['a'..'z'] ++ [(c, c)]

process :: [Char] -> [Char]
process = map myToUpper

titulo :: [Char] -> [Char]
titulo xs = process (' ':xs)

main = do
    a <- getLine
    print $ titulo a

