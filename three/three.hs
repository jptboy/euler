main = do
    putStrLn "Enter the number you wish to find the largest prime factor of:"
    input <- getLine
    let number = read input :: Integer
    putStrLn "The largest prime factor of your number is :"
    print(ans number)


factorizer::Integer -> [Integer]
factorizer y = filter (\x -> y `mod` x == 0) [y,y-1..1] 

intsqrt::Integer -> Integer
intsqrt x = floor (sqrt (fromIntegral x))

isPrime::Integer -> Bool
isPrime x
    | x <= 1 = False
    | x <= 3 = True
    | x `mod` 2 == 0 = False
    | x `mod` 3 == 0 = False 
    | otherwise =  null [y | y <- [2..intsqrt x] ,x `mod` y == 0]

anslist x = filter (isPrime) (factorizer x)
ans x = head (anslist x)
