expoentes :: Integral a => a -> a -> Int
expoentes x y = length (takeWhile (\(a,b) -> b == 0) (iterate (\(a,b) -> (a `divMod` y)) (x,0)))

main = do
    print $ expoentes 7 2
    print $ expoentes 4 2
    print $ expoentes 8 2
    print $ expoentes 24 2
    print $ expoentes 1024 2
    print $ expoentes 150 5