distance :: String -> Int -> Int -> Int
distance [] _ _ = 0
distance (x:xs) l i
    | x == '.' = min (distance xs l (i+1)) (l-i)
    | otherwise = distance xs l (i+1)

main = do
    print $ distance "01.2." 3 0

    