{-
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

keyword: below 1000

Crappy brute force solution, didn't use summation rule. Was an exercise to learn haskell.
-}

main = do
    putStrLn "The answer is: "
    let sum3 = sumList mults3
    let sum5 = sumList mults5
    let subs = sumList mults3and5 --subtract common multiples
    print(sum3 + sum5 - subs)

mults3 = [x | x <- [1..999], x `mod` 3 == 0]--list generator, x from [1,999] where x is multiple of 3
mults5 = [x | x <- [1..999], x `mod` 5 == 0]
mults3and5 = [x | x <- [1..999], x `mod` 3 == 0, x `mod` 5 == 0]--list generator, x from [1,999] where x is multiple of 3 and 5
sumList::[Int]->Int--defining the function as taking a list<Int> and returning an Int
sumList (x:xs) = sum(x:xs)--function for sum
-- x is the first elem of the list, xs is the rest of the list