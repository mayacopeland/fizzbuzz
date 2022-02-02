import System.Environment

createFizz :: Int -> String
createFizz x =  
		if x `mod` 15 == 0 then
                "FizzBuzz"
        else if x `mod` 3 == 0 then
				"Fizz"
        else if x `mod` 5 == 0 then
                "Buzz"
        else
			show x

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
