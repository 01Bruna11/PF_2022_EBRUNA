--Aluízio quer comprar uma televisão parcelada. Ele tem X reais por mês disponíveis para pagar a televisão. No parcelamento, quanto mais parcelas, maior o juros que usa a seguinte regra.
-- 1 vez sem juros
-- 2 vezes com juros de 5%
-- 3 vezes com juros de 10%
-- 4 vezes com juros de 15%
-- 5 vezes com juros de 20%
-- 6 vezes com juros de 25%
-- 7 vezes com juros de 30%
-- 8 vezes com juros de 35%
-- 9 vezes com juros de 40%
-- 10 vezes com juros de 45%

import Text.Printf

juros :: Int -> Float
juros 1 = 0
juros 2 = 0.05
juros 3 = 0.1
juros 4 = 0.15
juros 5 = 0.2
juros 6 = 0.25
juros 7 = 0.3
juros 8 = 0.35
juros 9 = 0.4
juros 10 = 0.45

compra :: Float -> Int -> Float
compra x n = x * (1 + juros n)

main = do
    printf "Digite o valor da compra: "
    x <- readLn
    printf "Digite o número de parcelas: "
    n <- readLn
    printf "O valor da compra com juros é: %.2f\n" (compra x n)
    return ()
