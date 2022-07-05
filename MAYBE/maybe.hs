--implemente a função somaMaybe que soma duas variáveis Maybe[Int].
somaMaybe :: Maybe Int -> Maybe Int -> Maybe Int
somaMaybe (Just x) (Just y) = Just (x + y)
somaMaybe (Just x) Nothing = Just x
somaMaybe Nothing (Just y) = Just y
somaMaybe Nothing Nothing = Nothing

main = do
    print (somaMaybe (Just 5) (Just 7))
    print (somaMaybe (Just 5) Nothing)
    print (somaMaybe Nothing (Just 3))
    print (somaMaybe Nothing Nothing)
