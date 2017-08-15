main = do
  n <- readLn :: IO Int
  readWords n

readWords :: Int -> IO ()
readWords 0 = return ()
readWords n = do
  word <- getLine
  putStr $ show $ countVowels word
  putStr " "
  readWords (n-1)

countVowels :: String -> Int
countVowels [] = 0
countVowels (x:xs)
  | elem x "aeiouy" = 1 + countVowels xs
  | otherwise = countVowels xs
