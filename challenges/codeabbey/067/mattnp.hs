import Data.List

main :: IO ()
main = do
  input <- getContents
  let (count:xs) = map read $ words input :: [Int]
  printResults (map fib [0..1000]) xs

printResults :: [Int] -> [Int] -> IO ()
printResults _ [] = return ()
printResults fs (x:xs) = do
  case elemIndex x fs of
    Just n -> putStr $ show $ n
    Nothing -> putStr " "
  putStr " "
  printResults fs xs

fib :: Num a => Int -> a
fib n = fibs !! n
  where fibs = 0 : 1 : zipWith (+) fibs (drop 1 fibs)
