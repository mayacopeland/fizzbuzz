import System.Environment

createFizz :: Int -> String
createFizz x
    | (x `mod` 15 == 0) = "FizzBuzz"
    | (x `mod` 3 == 0) = "Fizz"
    | (x `mod` 5 == 0) = "Buzz"
    | otherwise = show xx

outputFizz :: [String] -> IO()
outputFizz (x:[]) = putStrLn x 
outputFizz (x:xs) = do 
    putStrLn x 
    outputFizz xs

main :: IO()
main = do
    args <- getArgs
    let numbers = [1..(read $ head args)]
    let xs = map createFizz numbers
    outputFizz xs
