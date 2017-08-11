main = do
  n <- readLn :: IO Int
  readPairs n

readPairs :: Int -> IO ()
readPairs 0 = return ()
readPairs n = do
  array <- getLine
  let xs = map read $ words array :: [Float]
  putStr $ show $ squareRoot (head xs) (last xs) 1
  putStr " "
  readPairs (n-1)

squareRoot :: Float -> Float -> Float -> Float
squareRoot x 0 r = r
squareRoot x n r = squareRoot x (n - 1) ((r + x / r) / 2)
