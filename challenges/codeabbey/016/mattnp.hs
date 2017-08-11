main = do
   n <- readLn :: IO Int
   readArrays n

readArrays :: Int -> IO ()
readArrays 0 = return ()
readArrays n = do
  array <- getLine
  let ys = map read $ words array :: [Float]
  putStr $ show $ averageArray $ init ys
  putStr " "
  readArrays (n-1)

averageArray :: [Float] -> Int
averageArray (xs) = round $ sum xs / fromIntegral (length xs)
