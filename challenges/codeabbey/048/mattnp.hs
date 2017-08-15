main = do
  n <- readLn :: IO Int
  input <- getLine
  let xs = map read $ words input :: [Int]
  readNums xs

readNums :: [Int] -> IO ()
readNums [] = return ()
readNums xs = do
  putStr $ show $ collatzSequence $ head xs
  putStr " "
  readNums $ tail xs

collatzSequence :: Int -> Int
collatzSequence x
  | x == 1 = 0
  | x `mod` 2 == 0 = 1 + collatzSequence (x `div` 2)
  | otherwise = 1 + collatzSequence (3 * x + 1)
