import Data.ByteString (elemIndexEnd)
--IN : Lista xs e um natural n
--OUT: N-ésimo termo de xs, processe os números negativos para contar a partir do fim
elemIndexEnd :: [a] -> Int -> Maybe Int
elemIndexEnd [] _ = Nothing
elemIndexEnd xs n
    | n < 0 = elemIndexEnd xs (length xs + n)
    | otherwise = elemIndexEnd' xs n


