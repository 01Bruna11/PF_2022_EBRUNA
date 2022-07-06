--IN : Natural n
--OUT: Soma dos dígitos de n

sdig :: Int -> Int
sdig 0 = 0
sdig n = mod n 10 + sdig (div n 10)

main = do
    a <- readLn :: IO Int
    print $ sdig a