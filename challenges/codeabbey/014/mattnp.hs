main = do
    input <- getContents
    modularCalculator (words input)

modularCalculator :: [String] -> IO ()
modularCalculator [] = print 0
modularCalculator [x] = print x
modularCalculator (a:op:x:xs) = do
  let aI = read a :: Int
  let xI = read x :: Int
  let txs = read (last xs) :: Int
  modularCalculator ((operate aI xI op txs) : xs)

operate :: Int -> Int -> String -> Int -> String
operate a x op txs
  | op == "+" = show (mod (a + x) txs)
  | op == "*" = show (mod (a * x) txs)
  | otherwise = show a
