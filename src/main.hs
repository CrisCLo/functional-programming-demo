-- Write printAMessage here
printAMessage :: Show a => a -> IO ()
printAMessage x = print x

-- Write division here
division :: Double -> Double -> Maybe Double
division _ 0 = Nothing
division x y = Just (x / y)

-- Write factorial here
factorial :: Int -> Int
factorial 0 = 1
factorial n = product [1..n]

-- Write factList here
factList :: Int -> [Int]
factList n = [factorial i | i <- [1..n]]

-- Write merge here
merge :: [Int] -> [Int] -> [Int]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

main :: IO ()
main = do
    printAMessage "Hello, Haskell!"
    print ("division 10 2:", division 10 2)
    print ("division 10 0:", division 10 0)
    print ("factorial 5:", factorial 5)
    print ("factList 5:", factList 5)
    print ("merge [1,3,5] [2,4,6]:", merge [1,3,5] [2,4,6]) -- Replace this with your testing code