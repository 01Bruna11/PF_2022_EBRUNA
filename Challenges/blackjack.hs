--Faça um programa que conte o valor de uma mão de blackjack.
--Ela recebe um vetor de cartas e calcula usando as seguntes regras. K, Q e J valem 10 pontos. ÁS vale 11 pontos. As outras cartas valem seu próprio valor.
--Se a soma de pontos for maior que 21, o Ás passa a valer 1 ponto, diminuindo a soma total, tentando fazer o valor baixar para menos de 21.
--No vetor de inteiros, os valores 1, 11, 12 e 13 são respectivamente Ás, J, Q e K.

--Exemplo:
--Entrada: [2, 1, 13]
--Saída: 21

black :: [Int] -> Int
black [] = 0
black (x : xs)
  | x == 1 = 11
  | x == 11 = 10 + black xs
  | x == 12 = 10 + black xs
  | x == 13 = 10 + black xs
  | otherwise = x + black xs

main = do 
    --quantidade de elementos do vetor
    n <- readLn :: IO Int
    --vetor de elementos
    x <- getLine
    let v = (map read (words x) :: [Int])
    print (black v)
