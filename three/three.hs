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
isPrime x = length([y | y <- takeWhile (<= intsqrt x) [2..], x `mod` y == 0 ]) == 0

anslist x = filter (isPrime) (factorizer x)
ans x = head (anslist x)
