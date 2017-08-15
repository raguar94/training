import Data.List

main = do
  n <- readLn :: IO Int
  readArrays n

readArrays :: Int -> IO ()
readArrays 0 = return ()
readArrays n = do
  array <- getLine
  let xs = map read $ words array :: [Int]
  putStr $ show $ medianOfThree xs
  putStr " "
  readArrays (n-1)

medianOfThree :: [Int] -> Int
medianOfThree xs = sort xs !! 1
