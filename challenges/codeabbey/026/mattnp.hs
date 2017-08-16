main = do
  n <- readLn :: IO Int
  readPairs n

readPairs :: Int -> IO ()
readPairs 0 = return ()
readPairs n = do
  input <- getLine
  let pair = map read $ words input :: [Int]
  putStr "("
  putStr $ show $ gcd' (head pair) (last pair)
  putStr " "
  putStr $ show $ lcm' (head pair) (last pair)
  putStr ") "
  readPairs (n-1)

gcd' :: Integral a => a -> a -> a
gcd' a b
  | a == 0 = b
  | b == 0 = a
  | a > b = gcd' b (a `mod` b)
  | otherwise = gcd' a (b `mod` a)

lcm' :: Integral a => a -> a -> a
lcm' a b = a * b `div` gcd' a b
