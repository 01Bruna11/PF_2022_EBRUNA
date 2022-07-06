--IN : Dois inteiros positivos, n e b (1<b<37)
--OUT: Representação na base b do inteiro n

texto :: Int -> Char 
texto f
  | f == 0 = '0'
  | f == 1 = '1'
  | f == 2 = '2'
  | f == 3 = '3'
  | f == 4 = '4'
  | f == 5 = '5'
  | f == 6 = '6'
  | f == 7 = '7'
  | f == 8 = '8'
  | f == 9 = '9'
  | f == 10 = 'A'
  | f == 11 = 'B'
  | f == 12 = 'C'
  | f == 13 = 'D'
  | f == 14 = 'E'
  | f == 15 = 'F'
  | f == 16 = 'G'
  | f == 17 = 'H'
  | f == 18 = 'I'
  | f == 19 = 'J'
  | f == 20 = 'K'
  | f == 21 = 'L'
  | f == 22 = 'M'
  | f == 23 = 'N'
  | f == 24 = 'O'
  | f == 25 = 'P'
  | f == 26 = 'Q'
  | f == 27 = 'R'
  | f == 28 = 'S'
  | f == 29 = 'T'
  | f == 30 = 'U'
  | f == 31 = 'V'
  | f == 32 = 'W'
  | f == 33 = 'X'
  | f == 34 = 'Y'
  | f == 35 = 'Z'
  | f == 36 = '_'
  | f == 37 = '?'
  | otherwise = '?'

base :: Int -> Int -> [Char]
base n b
  | n == 0 = []
  | otherwise =  base (div n b) b ++ [texto (mod n b)]
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ base a b 