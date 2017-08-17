main :: IO ()
main = do
  n <- getLine
  input <- getLine
  let xs = map read $ words input :: [Int]
  printIntList $ map repRand xs

repRand :: Int -> Int
repRand x = length $ neuRand [x]

neuRand :: [Int] -> [Int]
neuRand [] = []
neuRand xs = do
  let nx = (last xs ^ 2 `div` 100) `mod` 10000
  if elem nx xs then xs else neuRand (xs++[nx])

printIntList :: [Int] -> IO ()
printIntList [] = return ()
printIntList (x:xs) = do
  putStr $ show x
  putStr " "
  printIntList xs
