import System.Environment
fb :: [Int] -> IO()
fb (x:[]) = do
        if x `mod` 15 == 0 then
                putStrLn "FizzBuzz"
        else if x `mod` 3 == 0 then
                putStrLn "Fizz"
        else if x `mod` 5 == 0 then
                putStrLn "Buzz"
        else
		print x
fb (x:xs) = do
	if x `mod` 15 == 0 then 
		putStrLn "FizzBuzz"
	else if x `mod` 3 == 0 then
		putStrLn "Fizz"
	else if x `mod` 5 == 0 then
		putStrLn "Buzz"
	else
		print x
	fb xs


main :: IO ()
main = do
	args <- getArgs
	let numbers = [1..(read $ head args)]
	fb numbers
