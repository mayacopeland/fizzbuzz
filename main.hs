import System.Environment

createFizz :: Int -> String
createFizz x
    | (x `mod` 15 == 0) = "FizzBuzz"
    | (x `mod` 3 == 0) = "Fizz"
    | (x `mod` 5 == 0) = "Buzz"
    | otherwise = show x

outputFizz :: [String] -> IO()
outputFizz (x:[]) = putStrLn x 
outputFizz (x:xs) = putStrLn x >> outputFizz xs

main :: IO()
main = do
    args <- getArgs
    outputFizz $ map createFizz [1..(read $ head args)]