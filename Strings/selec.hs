--IN : Uma string S
--OUT: Versão em caixa alta da string S
--Ex: upper "abc" == "ABC"

selec u p = [u !! y | y <- p]

main = do
    a <- getLine
    b <- readLn :: IO [Int]
    print $ selec a b



